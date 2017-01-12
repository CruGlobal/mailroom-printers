#include <iostream>
using namespace std;
int main(int argc, const char* argv[])
{
	std::string s;
	std::string comp = "%!PS-Adobe-3.0";
	std::string jobname = "";
	if (argc > 5)
		jobname = argv[4];
	while(!std::getline(cin, s).eof())
	{
		cout << s << endl;
		if (s == comp)
			cout << "%%Title:\t(" << jobname << ")" << endl;
	}
	return 0;
}

