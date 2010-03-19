class UsPhoneConstraint {
    def validate = { val ->
        return val ==~ /^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$/
    }
}
