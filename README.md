# Sparse-Checkout Example Repo

This repository is an example of a file layout that works well with the sparse-checkout file. Forked from github blog, this adds extra features such as bash selection and prompts.

## When cloning this repository

When cloning this repository make sure to use a shallow clone.

```git clone --depth 1 --sparse git@github.com:avcorrado/sparse-checkout-example.git```

This makes sure that only the top level of the repository is cloned for faster cloning.

## git sparse-checkout commands

To get the full file and folders You can run the `bootstrap.sh` command and it will present options in the shell for which to folder to sparesly checkout.

If you want to add new folders you can modify `bootstrap.sh` array of `"options"`.

Each will launch the `git sparse-checkout set` command to show only the directories needed for those teams.

## Attribution

The code in these projects are included only as example content, and does not actually represent a real microservices-in-monorepo example. The code was copied from the following GitHub repos (with licenses):

* [googlesamples/google-photos](https://github.com/googlesamples/google-photos)  (Apache-2.0)
* [hokein/electron-sample-apps](https://github.com/hokein/electron-sample-apps) (Apache-2.0)
* [jogendra/phimpme-iOS](https://github.com/jogendra/phimpme-iOS) (MIT)
* [twbs/bootstrap](https://github.com/twbs/bootstrap) (MIT)
* [artsy/artsy.github.io](https://github.com/artsy/artsy.github.io) (MIT)
* [cloudacademy/static-website-example](https://github.com/cloudacademy/static-website-example) (CC-A 3.0)
* [microsoft/devops-project-samples](https://github.com/microsoft/devops-project-samples) (MIT)
