/* Simple version to generate different combinations */

#include <iostream>
#include <cstdlib>
#include <string.h>
#include <cstring>
#include <algorithm>
#include <fstream>
#include <vector>

#define LOOP_LEVEL 3

using namespace std;

void itoa (int num, char * ch) {
  int i=0, j;
  char tmp;
  if (num == 0) {
    ch[0] = '0';
    ch[1] = '\0';
    return;
  }
  while (num != 0) {
    ch[i] = '0' + num%10;
    i++;
    num=num/10;
  }
  ch[i]='\0';
  for (j=0; j<i/2; j++) {
    tmp = ch[j];
    ch[j]=ch[i-1-j];
    ch[i-1-j]=tmp;
  }
}

string getNewOrder (vector<int> loops) {
  string str;

  int i;
  for (i=0; i<loops.size(); i++) {
    if (i != 0) {
      str.append(" ");
    }

    char loop_tmp[5];
    itoa(loops[i], loop_tmp);
    string loop(loop_tmp);
    str.append(loop);
  }

  return str;
}

/* from generate scripts to mm.f, then compile and get result */
void process (string order, int unroll, int tile) {
  system("make clean");

  char scripts_args[64] = "./generate_script.sh ";
  char space[4] = " ";
  strcat(scripts_args, order.c_str());
  strcat(scripts_args, space);

  char tmp_unroll[8];
  char tmp_tile[8];
  itoa(unroll, tmp_unroll);
  itoa(tile, tmp_tile);
  strcat(scripts_args, tmp_unroll);
  strcat(scripts_args, space);
  strcat(scripts_args, tmp_tile);

  // generate scripts
  system(scripts_args);

  // transform
  system("./chill_runner.f.sh mm_fun");

  // compile and execute
  system("uhf90 -O3 -o mm mm.f");
  system("./mm");
}

//////////////////////////////////////////////////
int main (int argc, char **argv) {
  vector<int> loops; // for STL next_permutation
  for (int i=0; i<LOOP_LEVEL; i++) {
    loops.push_back(i+1); // CHiLL loop level starts from 1
  }

  /*
   * start to traverse all the interchange order
   */
  int global_counter = 0;
  int max_unroll = 8, max_blocking_size = 6;
  ofstream TFILE;
  TFILE.open("temp.t");

  do { // -> interchange
    string tmp_neworder = getNewOrder(loops);

    int i, j; // i -> unroll, j -> blocking

    for (i=1; i<=max_unroll; i++) {
      for (j=1; j<=max_blocking_size; j++) {

	TFILE << global_counter << "\t"
	      << tmp_neworder << "\t";
	TFILE << "unroll=" << i << "\t";
	TFILE << "blocking=" << j << "\t\n";

	//compile(global_counter, FILENAME);
	process(tmp_neworder, i, j);
	global_counter++;

      }
    }

  } while (next_permutation(loops.begin(), loops.end()));

  TFILE.close();
  //} // if
  /*else { // output to temp files
    out << line << endl;
    }*/

  return 0;
}
