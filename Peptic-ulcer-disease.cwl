cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ulcer---primary:
    run: ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  duodenal-peptic-ulcer-disease---primary:
    run: duodenal-peptic-ulcer-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ulcer---primary/output
  gastric-peptic-ulcer-disease---primary:
    run: gastric-peptic-ulcer-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: duodenal-peptic-ulcer-disease---primary/output
  peptic-ulcer-disease-haemostasis---primary:
    run: peptic-ulcer-disease-haemostasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: gastric-peptic-ulcer-disease---primary/output
  peptic-ulcer-disease-operation---primary:
    run: peptic-ulcer-disease-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-haemostasis---primary/output
  peptic-ulcer-disease-stomach---primary:
    run: peptic-ulcer-disease-stomach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-operation---primary/output
  peptic-ulcer-disease-closure---primary:
    run: peptic-ulcer-disease-closure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-stomach---primary/output
  peptic-ulcer-disease-suture---primary:
    run: peptic-ulcer-disease-suture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-closure---primary/output
  peptic-ulcer-disease-specified---primary:
    run: peptic-ulcer-disease-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-suture---primary/output
  peptic-ulcer-disease---primary:
    run: peptic-ulcer-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-specified---primary/output
  acute-peptic-ulcer-disease---primary:
    run: acute-peptic-ulcer-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease---primary/output
  peptic-ulcer-disease-complication---primary:
    run: peptic-ulcer-disease-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: acute-peptic-ulcer-disease---primary/output
  peptic-ulcer-disease-haemorrhage---primary:
    run: peptic-ulcer-disease-haemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-complication---primary/output
  peptic-ulcer-disease-bleeding---primary:
    run: peptic-ulcer-disease-bleeding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-haemorrhage---primary/output
  peptic-ulcer-disease-perforation---primary:
    run: peptic-ulcer-disease-perforation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-bleeding---primary/output
  peptic-ulcer-disease-obstruction---primary:
    run: peptic-ulcer-disease-obstruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-perforation---primary/output
  chronic-peptic-ulcer-disease---primary:
    run: chronic-peptic-ulcer-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-obstruction---primary/output
  peptic-ulcer-disease-perforated---primary:
    run: peptic-ulcer-disease-perforated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: chronic-peptic-ulcer-disease---primary/output
  peptic-ulcer-disease-antiplatelet---primary:
    run: peptic-ulcer-disease-antiplatelet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-perforated---primary/output
  peptic-ulcer-disease-inflammatory---primary:
    run: peptic-ulcer-disease-inflammatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-antiplatelet---primary/output
  peptic-ulcer-disease-unspec---primary:
    run: peptic-ulcer-disease-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-inflammatory---primary/output
  peptic-ulcer-disease-erosion---primary:
    run: peptic-ulcer-disease-erosion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-unspec---primary/output
  gastrojejunal-peptic-ulcer-disease---primary:
    run: gastrojejunal-peptic-ulcer-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-erosion---primary/output
  vpersonal-peptic-ulcer-disease---primary:
    run: vpersonal-peptic-ulcer-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: gastrojejunal-peptic-ulcer-disease---primary/output
  peptic-ulcer-disease-history---primary:
    run: peptic-ulcer-disease-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: vpersonal-peptic-ulcer-disease---primary/output
  peptic-ulcer-disease-procedure---primary:
    run: peptic-ulcer-disease-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-history---primary/output
  peptic-ulcer-disease---secondary:
    run: peptic-ulcer-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-procedure---primary/output
  peptic-ulcer-disease-stomach---secondary:
    run: peptic-ulcer-disease-stomach---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease---secondary/output
  peptic-ulcer-disease-perforated---secondary:
    run: peptic-ulcer-disease-perforated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-stomach---secondary/output
  peptic-ulcer-disease-closure---secondary:
    run: peptic-ulcer-disease-closure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-perforated---secondary/output
  peptic-ulcer-disease-unspecified---secondary:
    run: peptic-ulcer-disease-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-closure---secondary/output
  peptic-ulcer-disease-duodenum---secondary:
    run: peptic-ulcer-disease-duodenum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-unspecified---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-duodenum---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
