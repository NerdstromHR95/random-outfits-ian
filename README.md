# Project Name

> NerdstromHR95 - a Nordstrom clone 

## Related Projects
  -  https://github.com/NerdstromHR95/main-picture-patricia
  -  https://github.com/NerdstromHR95/details-service-dan
  -  https://github.com/NerdstromHR95/reviews-jehwa
## Table of Contents

1. [Requirements](#requirements)
1. [Development](#development)
1. [Usage](#Usage)

## Requirements

- Node 6.13.0
- mySQL 8.0.11 must have a user account with admin permissions (do not use root)

### Installing Dependencies

From within the root directory:

```sh
npm install -g webpack
npm install
```
## Usage

-From within the root directory:
```sh
$ mysql -u [FILL_IN_USERNAME] -p <schema.sql
```

- Inside of /db/config.js fill in username and password to your personal local mysql user & password.

```sh
module.exports = {
  user: '[FILL_IN_USERNAME]', 
  password: '[FILL_IN_PASSWORD]', 
  database: 'stylishDB'
};
```

-from within the root directory:

```sh
npm run build
npm run start  
```
