# Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, email, or any other method with the owners of this repository before making a change.

Please note we have a code of conduct, please follow it in all your interactions with the project.

## Code of Conduct

### Our Pledge

In the interest of fostering an open and welcoming environment, we as contributors and maintainers pledge to making participation in our project and our community a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, gender identity and expression, level of experience, nationality, personal appearance, race, religion, or sexual identity and orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment include:

* Using welcoming and inclusive language
* Being respectful of differing viewpoints and experiences
* Gracefully accepting constructive criticism
* Focusing on what is best for the community
* Showing empathy towards other community members

Examples of unacceptable behavior by participants include:

* The use of sexualized language or imagery and unwelcome sexual attention or
advances
* Trolling, insulting/derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information, such as a physical or electronic
  address, without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

### Our Responsibilities

Project maintainers are responsible for clarifying the standards of acceptable behavior and are expected to take appropriate and fair corrective action in response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or reject comments, commits, code, wiki edits, issues, and other contributions that are not aligned to this Code of Conduct, or to ban temporarily or permanently any contributor for other behaviors that they deem inappropriate, threatening, offensive, or harmful.

### Scope

This Code of Conduct applies both within project spaces and in public spaces when an individual is representing the project or its community. Examples of representing a project or community include using an official project e-mail address, posting via an official social media account, or acting as an appointed representative at an online or offline event. Representation of a project may be further defined and clarified by project maintainers.

### Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported by contacting the project team at moldach686@gmail.com. All
complaints will be reviewed and investigated and will result in a response that
is deemed necessary and appropriate to the circumstances. The project team is
obligated to maintain confidentiality with regard to the reporter of an incident.
Further details of specific enforcement policies may be posted separately.

Project maintainers who do not follow or enforce the Code of Conduct in good
faith may face temporary or permanent repercussions as determined by other
members of the project's leadership.

### Attribution

This Code of Conduct is adapted from the [Contributor Covenant][homepage], version 1.4,
available at [http://contributor-covenant.org/version/1/4][version]

[homepage]: http://contributor-covenant.org
[version]: http://contributor-covenant.org/version/1/4/

### Building and Testing the R Package

Before submitting your contribution, please make sure to build and test the package using the following steps:

- Render the README:

```r
rmarkdown::render("README.Rmd")
```

- Build Vignettes:

```r
devtools::build_vignettes()
```

- Document the Package:

```r
devtools::document()
```

- Check the Package:

This step ensures that everything is in order, checking for common potential problems.

```r
devtools::check()
```

- Build the Package:

This step compiles your package into a tarball, ready for testing or distribution.

```r
devtools::build()
```

- Install the Package:

Finally, install the package locally to test it.

```r
devtools::install()
```

### Updating the Docker Container

Specifically for Matthew until this is automated with CI.



- Log in to Docker

```bash
docker login
```

- Build the Docker Image (if not yet built)

```bash
docker build -t vaporwave .
```

- Tag Your Docker Image

Replace x.y.z with the appropriate version number for your new image

```bash
docker tag vaporwave moldach686/vaporwave:x.y.z
```

- Push the Image to Docker Hub

```bash
docker push moldach686/vaporwave:x.y.z
```

Make sure to replace `x.y.z`` with the actual version tag you used in the previous step

Please ensure you have tested the Docker container locally before pushing to Docker Hub. This helps us maintain the quality and reliability of the Docker images available to users.

> Note: Always remember to increment the version tag appropriately following semantic versioning guidelines. This avoids overwriting existing versions and helps users understand the level of changes introduced.

We appreciate your contributions to the vapoRwave project and look forward to your innovative enhancements! 🚀🌟