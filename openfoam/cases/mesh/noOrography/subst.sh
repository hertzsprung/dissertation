#!/bin/bash
export $(cat $1)
envsubst
