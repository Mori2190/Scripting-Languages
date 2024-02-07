#! /bin/sh

# For loop for multiple case options

define_option()
{
    while :; do
        clear
        printf "***********************\n"
        printf "Please select an option from the list below:\n"
        printf "  1. Option One\n"
        printf "  2. Option Two\n"
        printf "  3. Option Three\n"
        printf "  4. Exit\n"
        printf "\*Note that you can select multiple options."
        printf "$__option_message\n"
        printf "Select option(s) [1-4]: "
        read -a __option
        for __choice in "${__option[@]}"; do
            case ${__choice} in
                1)
                    printf "This is option one."
                    ;;
                2)
                    printf "This is option two."
                    $(call_ext_function)
                    ;;
                3)
                    printf "This is option three."
                    $(call_ext_function_2)
                    ;;
                4)
                    exit 0
                    ;;
                *)
                    __option_message="You did not select a valid option."
             esac
        done
    done
}
