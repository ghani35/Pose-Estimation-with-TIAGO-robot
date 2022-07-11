#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ghani/tiago_public_ws/src/tf_lookup"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ghani/tiago_public_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ghani/tiago_public_ws/install/lib/python2.7/dist-packages:/home/ghani/tiago_public_ws/build/tf_lookup/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ghani/tiago_public_ws/build/tf_lookup" \
    "/usr/bin/python2" \
    "/home/ghani/tiago_public_ws/src/tf_lookup/setup.py" \
     \
    build --build-base "/home/ghani/tiago_public_ws/build/tf_lookup" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ghani/tiago_public_ws/install" --install-scripts="/home/ghani/tiago_public_ws/install/bin"
