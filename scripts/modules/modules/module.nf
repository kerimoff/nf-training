//module.nf file
params.message = 'parameter from module script'

def sayMessage() {
    println "$params.message"
}
