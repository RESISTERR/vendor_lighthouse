function __print_lighthouse_functions_help() {
cat <<EOF
Additional Lighthouse functions:
- clomerge:        Utility to merge CLO tags.
EOF
}

function clomerge()
{
    target_branch=$1
    set_stuff_for_environment
    T=$(gettop)
    python3 $T/vendor/lighthouse/build/tools/merge-clo.py $target_branch
}

export SKIP_ABI_CHECKS="true"
export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true
