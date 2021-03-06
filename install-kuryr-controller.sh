#!/bin/sh

. ./config.sh

# source admin variables
. ./admin-openrc.sh

# create openstack user for kuryr, add as admin
openstack user create --domain default --password $KURYR_PASS kuryr
openstack role add --project service --user kuryr admin
