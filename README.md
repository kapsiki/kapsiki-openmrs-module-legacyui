# openmrs-module-legacyui

[![Build Status](https://travis-ci.org/openmrs/openmrs-module-legacyui.svg?branch=master)](https://travis-ci.org/openmrs/openmrs-module-legacyui) [![Coverage Status](https://coveralls.io/repos/github/openmrs/openmrs-module-legacyui/badge.svg?branch=master)](https://coveralls.io/github/openmrs/openmrs-module-legacyui?branch=master)

- The legacy user interface for OpenMRS Platform 2.x is chiefly comprised of administrative functions and the patient dashboard.
- A new and more contemporary UI has been introduced via a UI framework and the legacy UI is kept around for
  administrative functions that are not yet implemented in the new UI.
- To retire the Legacy UI as planned, it is required to move the implementations and modules that still rely on it in order to
  maintain backwards compatibility.
- The main idea behind this project is to move legacy UI functions into an OpenMRS module that these implementations can install
  until they are able to migrate away from it, since most of the implementations of OpenMRS around the world are running OpenMRS 1.9.

- It is compulsory to run openmrs-module-legacyui against legacyui branch of openmrs-core
  that I have created to eventually remove legacyui.

## How to build and deploy

After making changes to the leagacy UI, you must build an .omod file which will be used as a module in OpenMRS.

### Build `.omod` file

```sh
mvn clean package
```

After that you should have a **BUILD SUCCESS** message. This means that the .omot file was successfully created and it is stored in `omod/target/legacyui-<version>.omod`.

### Run the distro-referenceapplication

Follow the readme in the distro-referenceapplication repository.

### Copy the `.omod` file

OpenMRS modules are typically stored in a mounted volume within your Docker container. You'll need to copy the .omod file into this directory.

```sh
docker cp omod/target/legacyui-<version>.omod <container_name>:/openmrs/distribution/openmrs_modules
```

### Restart the OpenMRS Container

Restart the OpenMRS container to apply changes:

```sh
docker restart <container_name>
```
