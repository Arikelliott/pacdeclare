# pacdeclare
My own custom declarative pacman script system, expected to be a cheap ripoff of pacdef by steven-omaha (found here in case anyone's interested https://github.com/Arikelliott/pacdeclare). Mine will probably be simple bash scripts.

Why, exactly, am I making my own inferior version of something that already exists? It's educational. And I like to know how the stuff I use works. No better way to do that than to make it myself.

What is a declarative package manager? As I found out two hours ago (and hope I'm re-explaining correctly; ask someone else for a better explanation), it's where you make (declare) a list of packages (such as in a text doc configuration file), run the command to install/update/sync your packages, and your package manager makes sure every package on that list is installed (and nothing else). Want to install or uninstall something? Edit the config, run the script. Want to install everything on a clean system? Copy-paste the config, run the script.
