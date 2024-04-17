nextflow.enable.dsl=2

process PYSTUFF {

  script:
  """
  myscript.py
  """
}

workflow {
  PYSTUFF()
}