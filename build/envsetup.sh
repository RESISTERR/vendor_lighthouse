function __print_lighthouse_functions_help() {
cat <<EOF
Additional Lighthouse functions:
- clomerge:        Utility to merge CLO tags.
EOF
}

function clomerge()
{
    T=$(gettop)
    bash $T/vendor/lighthouse/build/tools/merge-tag.sh
}

export SKIP_ABI_CHECKS="true"
