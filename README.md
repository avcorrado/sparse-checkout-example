# This is an example monorepo with modern tooling

All services, clients, servers are located in this repository. It servers as a collection of all code. It is a modern monorepo structure, with git sparse methodology. This means; all code is visible, all progress is visible, all dependencies across projects are easily utilised and shared.

Most importantly it maintains git sparse methods to ensure only the project you want is checked out after cloning, no need to see everything!

## Once you have cloned, now it's time to checkout sparesly

You should run the `setup.sh` command, it will present options in the shell for which directory to sparesly checkout.

If you want to add new directories to handle sparesly you can modify `folders.cfg` array`

Each option will launch the `git sparse-checkout set` command to show only the directories needed for those teams.

If you want to revert to see all folders, select `*All` when the menu appears.

## A note on "Codeowners"

We use the concept and method of Codeowners in git and this repository. This means within the file "CODEOWNERS" in the root we can specifically target which developers can edit files/folders/projects of this repository, allowing for safe pull requests.

## Attribution

The code in these projects are included only as example content, and does not actually represent a real microservices-in-monorepo example. The code was copied from the following GitHub repos (with licenses):

- [googlesamples/google-photos](https://github.com/googlesamples/google-photos) (Apache-2.0)
- [hokein/electron-sample-apps](https://github.com/hokein/electron-sample-apps) (Apache-2.0)
- [jogendra/phimpme-iOS](https://github.com/jogendra/phimpme-iOS) (MIT)
- [twbs/bootstrap](https://github.com/twbs/bootstrap) (MIT)
- [artsy/artsy.github.io](https://github.com/artsy/artsy.github.io) (MIT)
- [cloudacademy/static-website-example](https://github.com/cloudacademy/static-website-example) (CC-A 3.0)
- [microsoft/devops-project-samples](https://github.com/microsoft/devops-project-samples) (MIT)
