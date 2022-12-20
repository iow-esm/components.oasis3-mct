# Purpose, Description

This is the OASIS3-MCT coupling library of the IOW earth-system model. 
The original source code is from  https://gitlab.com/cerfacs/oasis3-mct.git.
The following commit has been used as the starting point for developing the IOW ESM:

commit f0da54f1e912f2dae12c1487f4f78ef6f36b081d
Author: Andrea Piacentini <piacentini.palm@gmail.com>
Date:   Wed Jul 3 18:33:43 2019 +0200

    Avoid false detection of coincident segments by re-initializing LCOINC to fa
    tested cell is discarded

Contribution and changes from IOW are mainly build scripts. 


# Authors

* SK      (sven.karsten@io-warnemuende.de)
* HR      (hagen.radtke@io-warnemuende.de)


# Versions

## 1.00.01 (latest release)

| date        | author(s)   | link      |
|---          |---          |---        |
| 2022-12-20  | SK          | [1.00.01](https://git.io-warnemuende.de/iow_esm/components.cclm/src/branch/1.00.01)     | 

<details>

### changes
* updated build.sh
* added this readme file
    
### dependencies
* None
  
### known issues
* None

### tested with
* intensively tested on both HLRN machines
  * using example setups available under:
    (coupled) /scratch/usr/mviowmod/IOW_ESM/setups/
              MOM5_Baltic-CCLM_Eurocordex/example_8nm_0.22deg/1.00.00
    (uncoupled) /scratch/usr/mviowmod/IOW_ESM/setups/
                CCLM_Eurocordex/example_0.22deg/1.00.00
* can be built and run on Haumea but output is not intensively tested
  
</details>


## 1.00.00

| date        | author(s)   | link      |
|---          |---          |---        |
| 2022-01-28  | SK          | [1.00.00](https://git.io-warnemuende.de/iow_esm/components.cclm/src/branch/1.00.00)     | 

<details>

### changes
-
    
### dependencies
- 
  
### known issues
-

### tested with
* intensively tested on both HLRN machines
  * using example setups available under:
    (coupled) /scratch/usr/mviowmod/IOW_ESM/setups/
              MOM5_Baltic-CCLM_Eurocordex/example_8nm_0.22deg/1.00.00
    (uncoupled) /scratch/usr/mviowmod/IOW_ESM/setups/
                CCLM_Eurocordex/example_0.22deg/1.00.00
* can be built and run on Haumea but output is not intensively tested
  
</details>