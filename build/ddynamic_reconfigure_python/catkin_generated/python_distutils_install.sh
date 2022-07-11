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

echo_and_run cd "/home/ghani/tiago_public_ws/src/ddynamic_reconfigure_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ghani/tiago_public_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ghani/tiago_public_ws/install/lib/python2.7/dist-packages:/home/ghani/tiago_public_ws/build/ddynamic_reconfigure_python/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ghani/tiago_public_ws/build/ddynamic_reconfigure_python" \
    "/usr/bin/python2" \
    "/home/ghani/tiago_public_ws/src/ddynamic_reconfigure_python/setup.py" \
     \
    build --build-base "/home/ghani/tiago_public_ws/build/ddynamic_reconfigure_python" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ghani/tiago_public_ws/install" --install-scripts="/home/ghani/tiago_public_ws/install/bin"
