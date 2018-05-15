class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com'
id: 1dplot
baseCommand:
  - 1dplot
inputs:
  - id: separate
    type: boolean?
    inputBinding:
      position: 0
      prefix: '-sep'
      shellQuote: false
    label: Separate Sub-graph
    doc: Plot each column in a separate sub-graph.
  - id: install
    type: boolean?
    inputBinding:
      position: 0
      prefix: '-install'
    label: Install new colormap
    doc: Install a new X11 colormap.
  - id: together
    type: boolean?
    inputBinding:
      position: 0
      prefix: '-one'
      shellQuote: false
    label: Outputs plotted together
    doc: >-
      Plot all columns together in one big graph.  The default is for all each
      column to be in a separate sub-graph.
  - id: separate_scale
    type: boolean?
    inputBinding:
      position: 0
      prefix: '-sepscl'
      shellQuote: false
    label: Separate Subscale
    doc: >-
      Plot each column in a separate sub-graph and allow each sub-graph to have
      a different y-scale.  -sepscl is meaningless with -one!
  - id: noline
    type: boolean?
    inputBinding:
      position: 0
      prefix: '-noline'
    label: No connecting lines
    doc: Don't plot the connecting lines (also implies '-box').
  - id: noline_outofbox
    type: boolean?
    inputBinding:
      position: 0
      prefix: '-NOLINE'
      shellQuote: false
    label: 'No connecting lines, no values outside box'
    doc: >-
      Same as '-noline', but will not try to plot values outside the rectangular
      box that contains the graph axes.
  - id: box
    type: boolean?
    inputBinding:
      position: 0
    label: Plot a box
    doc: |-
      Plot a small 'box' at each data point, in addition
                    to the lines connecting the points.
                   * The box size can be set via the environment variable
                     AFNI_1DPLOT_BOXSIZE; the value is a fraction of the
                     overall plot size.  The standard box size is 0.006.
                     Example with a bigger box:
                       1dplot -DAFNI_1DPLOT_BOXSIZE=0.01 -box A.1D
                   * The box shapes are different for different time
                     series columns.  At present, there is no way to
                     control which shape is used for what column
                     (unless you modify the source code, that is).
                   * You can set environment variable AFNI_1DPLOT_RANBOX
                     to YES to get the '-noline' boxes plotted in a
                     pseudo-random order, so that one particular color
                     doesn't dominate just because it is last in the
                     plotting order; for example:
              1dplot -DAFNI_1DPLOT_RANBOX=YES -one -x X.1D -noline Y1.1D Y2.1D Y3.1D
outputs: []
label: 1dplot
requirements:
  - class: ShellCommandRequirement
