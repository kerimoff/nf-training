nextflow.enable.dsl=2
include { FASTQC } from './modules/rnaseq-tasks.nf'

params.reads = "data/yeast/reads/ref1_{1,2}.fq.gz"
read_pairs_ch = channel.fromFilePairs( params.reads, checkIfExists:true )

workflow {
    FASTQC(read_pairs_ch)
}
