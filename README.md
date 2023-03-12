# This is a monorepo with modern tooling

All services, clients, servers are located in this repository. It servers as a collection of all code. It is a modern monorepo structure, with git sparse methodology. This means; all code is visible, all progress is visible, all dependencies across projects are easily utilised and shared.

Most importantly it maintains git sparse methods to ensure only the project you want is checked out after cloning, no need to see everything!

## Once you have cloned, now it's time to checkout sparesly

You should run the `setup.sh` command, it will present options in the shell for which directory to sparesly checkout.

If you want to add new directories to handle sparesly you can modify `folders.cfg` array`

Each option will launch the `git sparse-checkout set` command to show only the directories needed for those teams.

If you want to revert to see all folders, select `*All` when the menu appears.

## A note on "Codeowners"

We use the concept and method of Codeowners in git and this repository. This means within the file "CODEOWNERS" in the root we can specifically target which developers can edit files/folders/projects of this repository, allowing for safe pull requests.
