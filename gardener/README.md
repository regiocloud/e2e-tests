# e2e-gardener

The following tests are performed for each series.

1. all provided Kubernetes versions can be deployed on all cloud profiles with all
   available images and pass the conformance tests
2. all provided Kubernetes versions can be updated (``n-1 -> n``) on all cloud profiles
   with all available images and pass the conformance tests
3. it is tested if the ``n+1`` Kubernetes release is already successfully deployable
   and updateable (``n -> n+1``) on all cloud profiles with all images and if the
   conformance tests can be passed

## Usage

```
./run.sh regio-a    # start tests @ Region A
./status.sh regi-a # get status from Sonobuoy (as soon as Sonobuoy is running)
```
