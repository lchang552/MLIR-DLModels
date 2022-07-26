#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d0)>
module {
  func.func @main() {
    %cst = arith.constant dense<1.000000e+00> : tensor<1x224x224x3xf32>
    %0 = call @predict(%cst) : (tensor<1x224x224x3xf32>) -> tensor<1x1000xf32>
    %1 = tensor.cast %0 : tensor<1x1000xf32> to tensor<*xf32>
    call @printMemrefF32(%1) : (tensor<*xf32>) -> ()
    return
  }
  func.func private @printMemrefF32(tensor<*xf32>)
  func.func @predict(%arg0: tensor<1x224x224x3xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<5.000000e-01> : tensor<1x112x112x64xf32>
    %cst_0 = arith.constant dense<0.408260554> : tensor<1x112x112x64xf32>
    %cst_1 = arith.constant dense<0.333333343> : tensor<1x112x112x64xf32>
    %cst_2 = arith.constant dense<2.500000e-01> : tensor<1x112x112x64xf32>
    %cst_3 = arith.constant dense<2.000000e-01> : tensor<1x112x112x64xf32>
    %cst_4 = arith.constant dense<5.000000e-02> : tensor<1x56x56x256xf32>
    %cst_5 = arith.constant dense<0.19614166> : tensor<1x56x56x256xf32>
    %cst_6 = arith.constant dense<0.0434782617> : tensor<1x56x56x256xf32>
    %cst_7 = arith.constant dense<0.0416666679> : tensor<1x56x56x256xf32>
    %cst_8 = arith.constant dense<4.000000e-02> : tensor<1x56x56x256xf32>
    %cst_9 = arith.constant dense<1.250000e-01> : tensor<1x56x56x64xf32>
    %cst_10 = arith.constant dense<0.288692474> : tensor<1x56x56x64xf32>
    %cst_11 = arith.constant dense<0.111111112> : tensor<1x56x56x64xf32>
    %cst_12 = arith.constant dense<1.000000e-01> : tensor<1x56x56x64xf32>
    %cst_13 = arith.constant dense<0.0909090936> : tensor<1x56x56x64xf32>
    %cst_14 = arith.constant dense<0.0714285746> : tensor<1x56x56x64xf32>
    %cst_15 = arith.constant dense<0.235723495> : tensor<1x56x56x64xf32>
    %cst_16 = arith.constant dense<0.0666666701> : tensor<1x56x56x64xf32>
    %cst_17 = arith.constant dense<6.250000e-02> : tensor<1x56x56x64xf32>
    %cst_18 = arith.constant dense<0.0588235296> : tensor<1x56x56x64xf32>
    %cst_19 = arith.constant dense<0.0454545468> : tensor<1x56x56x256xf32>
    %cst_20 = arith.constant dense<0.182601601> : tensor<1x56x56x256xf32>
    %cst_21 = arith.constant dense<0.0370370373> : tensor<1x56x56x256xf32>
    %cst_22 = arith.constant dense<0.0357142873> : tensor<1x56x56x256xf32>
    %cst_23 = arith.constant dense<0.0344827585> : tensor<1x56x56x256xf32>
    %cst_24 = arith.constant dense<3.125000e-02> : tensor<1x56x56x64xf32>
    %cst_25 = arith.constant dense<0.166696697> : tensor<1x56x56x64xf32>
    %cst_26 = arith.constant dense<0.0303030312> : tensor<1x56x56x64xf32>
    %cst_27 = arith.constant dense<0.0294117648> : tensor<1x56x56x64xf32>
    %cst_28 = arith.constant dense<0.0285714287> : tensor<1x56x56x64xf32>
    %cst_29 = arith.constant dense<0.0263157897> : tensor<1x56x56x64xf32>
    %cst_30 = arith.constant dense<0.154335782> : tensor<1x56x56x64xf32>
    %cst_31 = arith.constant dense<0.025641026> : tensor<1x56x56x64xf32>
    %cst_32 = arith.constant dense<2.500000e-02> : tensor<1x56x56x64xf32>
    %cst_33 = arith.constant dense<0.024390243> : tensor<1x56x56x64xf32>
    %cst_34 = arith.constant dense<0.0227272734> : tensor<1x56x56x256xf32>
    %cst_35 = arith.constant dense<0.14437224> : tensor<1x56x56x256xf32>
    %cst_36 = arith.constant dense<0.0222222228> : tensor<1x56x56x256xf32>
    %cst_37 = arith.constant dense<0.0217391308> : tensor<1x56x56x256xf32>
    %cst_38 = arith.constant dense<0.0212765951> : tensor<1x56x56x256xf32>
    %cst_39 = arith.constant dense<2.000000e-02> : tensor<1x56x56x64xf32>
    %cst_40 = arith.constant dense<0.136119545> : tensor<1x56x56x64xf32>
    %cst_41 = arith.constant dense<0.0196078438> : tensor<1x56x56x64xf32>
    %cst_42 = arith.constant dense<0.0192307699> : tensor<1x56x56x64xf32>
    %cst_43 = arith.constant dense<0.0188679248> : tensor<1x56x56x64xf32>
    %cst_44 = arith.constant dense<0.0178571437> : tensor<1x56x56x64xf32>
    %cst_45 = arith.constant dense<0.129138216> : tensor<1x56x56x64xf32>
    %cst_46 = arith.constant dense<0.0175438598> : tensor<1x56x56x64xf32>
    %cst_47 = arith.constant dense<0.0172413792> : tensor<1x56x56x64xf32>
    %cst_48 = arith.constant dense<0.0169491526> : tensor<1x56x56x64xf32>
    %cst_49 = arith.constant dense<0.0161290318> : tensor<1x56x56x256xf32>
    %cst_50 = arith.constant dense<0.123132147> : tensor<1x56x56x256xf32>
    %cst_51 = arith.constant dense<0.0158730168> : tensor<1x56x56x256xf32>
    %cst_52 = arith.constant dense<1.562500e-02> : tensor<1x56x56x256xf32>
    %cst_53 = arith.constant dense<0.0153846154> : tensor<1x56x56x256xf32>
    %cst_54 = arith.constant dense<1.250000e-02> : tensor<1x28x28x512xf32>
    %cst_55 = arith.constant dense<0.107879177> : tensor<1x28x28x512xf32>
    %cst_56 = arith.constant dense<0.0120481923> : tensor<1x28x28x512xf32>
    %cst_57 = arith.constant dense<0.0119047621> : tensor<1x28x28x512xf32>
    %cst_58 = arith.constant dense<0.0117647061> : tensor<1x28x28x512xf32>
    %cst_59 = arith.constant dense<0.0147058824> : tensor<1x28x28x128xf32>
    %cst_60 = arith.constant dense<0.117893592> : tensor<1x28x28x128xf32>
    %cst_61 = arith.constant dense<0.0144927539> : tensor<1x28x28x128xf32>
    %cst_62 = arith.constant dense<0.0142857144> : tensor<1x28x28x128xf32>
    %cst_63 = arith.constant dense<0.0140845068> : tensor<1x28x28x128xf32>
    %cst_64 = arith.constant dense<0.0135135138> : tensor<1x28x28x128xf32>
    %cst_65 = arith.constant dense<0.1132719> : tensor<1x28x28x128xf32>
    %cst_66 = arith.constant dense<0.0133333337> : tensor<1x28x28x128xf32>
    %cst_67 = arith.constant dense<0.0131578948> : tensor<1x28x28x128xf32>
    %cst_68 = arith.constant dense<0.012987013> : tensor<1x28x28x128xf32>
    %cst_69 = arith.constant dense<0.0121951215> : tensor<1x28x28x512xf32>
    %cst_70 = arith.constant dense<0.105456725> : tensor<1x28x28x512xf32>
    %cst_71 = arith.constant dense<0.0114942528> : tensor<1x28x28x512xf32>
    %cst_72 = arith.constant dense<0.0113636367> : tensor<1x28x28x512xf32>
    %cst_73 = arith.constant dense<0.0112359552> : tensor<1x28x28x512xf32>
    %cst_74 = arith.constant dense<0.0108695654> : tensor<1x28x28x128xf32>
    %cst_75 = arith.constant dense<0.102111101> : tensor<1x28x28x128xf32>
    %cst_76 = arith.constant dense<0.0107526882> : tensor<1x28x28x128xf32>
    %cst_77 = arith.constant dense<0.0106382975> : tensor<1x28x28x128xf32>
    %cst_78 = arith.constant dense<0.0105263162> : tensor<1x28x28x128xf32>
    %cst_79 = arith.constant dense<0.0102040814> : tensor<1x28x28x128xf32>
    %cst_80 = arith.constant dense<0.0990652889> : tensor<1x28x28x128xf32>
    %cst_81 = arith.constant dense<0.0101010101> : tensor<1x28x28x128xf32>
    %cst_82 = arith.constant dense<0.00999999977> : tensor<1x28x28x128xf32>
    %cst_83 = arith.constant dense<9.900990e-03> : tensor<1x28x28x128xf32>
    %cst_84 = arith.constant dense<0.00961538497> : tensor<1x28x28x512xf32>
    %cst_85 = arith.constant dense<0.0962770432> : tensor<1x28x28x512xf32>
    %cst_86 = arith.constant dense<9.523810e-03> : tensor<1x28x28x512xf32>
    %cst_87 = arith.constant dense<0.0094339624> : tensor<1x28x28x512xf32>
    %cst_88 = arith.constant dense<0.00934579409> : tensor<1x28x28x512xf32>
    %cst_89 = arith.constant dense<0.0090909088> : tensor<1x28x28x128xf32>
    %cst_90 = arith.constant dense<9.371200e-02> : tensor<1x28x28x128xf32>
    %cst_91 = arith.constant dense<0.00900900922> : tensor<1x28x28x128xf32>
    %cst_92 = arith.constant dense<0.00892857183> : tensor<1x28x28x128xf32>
    %cst_93 = arith.constant dense<0.00884955748> : tensor<1x28x28x128xf32>
    %cst_94 = arith.constant dense<8.620690e-03> : tensor<1x28x28x128xf32>
    %cst_95 = arith.constant dense<0.0913419052> : tensor<1x28x28x128xf32>
    %cst_96 = arith.constant dense<0.00854700897> : tensor<1x28x28x128xf32>
    %cst_97 = arith.constant dense<0.00847457629> : tensor<1x28x28x128xf32>
    %cst_98 = arith.constant dense<0.00840336177> : tensor<1x28x28x128xf32>
    %cst_99 = arith.constant dense<0.00819672085> : tensor<1x28x28x512xf32>
    %cst_100 = arith.constant dense<0.0891432464> : tensor<1x28x28x512xf32>
    %cst_101 = arith.constant dense<0.008130081> : tensor<1x28x28x512xf32>
    %cst_102 = arith.constant dense<0.00806451589> : tensor<1x28x28x512xf32>
    %cst_103 = arith.constant dense<8.000000e-03> : tensor<1x28x28x512xf32>
    %cst_104 = arith.constant dense<7.812500e-03> : tensor<1x28x28x128xf32>
    %cst_105 = arith.constant dense<0.0870963111> : tensor<1x28x28x128xf32>
    %cst_106 = arith.constant dense<0.00775193795> : tensor<1x28x28x128xf32>
    %cst_107 = arith.constant dense<0.0076923077> : tensor<1x28x28x128xf32>
    %cst_108 = arith.constant dense<0.00763358781> : tensor<1x28x28x128xf32>
    %cst_109 = arith.constant dense<0.00746268639> : tensor<1x28x28x128xf32>
    %cst_110 = arith.constant dense<0.0851844251> : tensor<1x28x28x128xf32>
    %cst_111 = arith.constant dense<0.00740740728> : tensor<1x28x28x128xf32>
    %cst_112 = arith.constant dense<0.0073529412> : tensor<1x28x28x128xf32>
    %cst_113 = arith.constant dense<7.299270e-03> : tensor<1x28x28x128xf32>
    %cst_114 = arith.constant dense<0.00714285718> : tensor<1x28x28x512xf32>
    %cst_115 = arith.constant dense<0.0833933725> : tensor<1x28x28x512xf32>
    %cst_116 = arith.constant dense<0.00709219835> : tensor<1x28x28x512xf32>
    %cst_117 = arith.constant dense<0.00704225338> : tensor<1x28x28x512xf32>
    %cst_118 = arith.constant dense<0.00699300691> : tensor<1x28x28x512xf32>
    %cst_119 = arith.constant dense<0.00632911408> : tensor<1x14x14x1024xf32>
    %cst_120 = arith.constant dense<0.0781509503> : tensor<1x14x14x1024xf32>
    %cst_121 = arith.constant dense<0.00621118024> : tensor<1x14x14x1024xf32>
    %cst_122 = arith.constant dense<0.00617283955> : tensor<1x14x14x1024xf32>
    %cst_123 = arith.constant dense<0.00613496918> : tensor<1x14x14x1024xf32>
    %cst_124 = arith.constant dense<0.00684931502> : tensor<1x14x14x256xf32>
    %cst_125 = arith.constant dense<0.0817109346> : tensor<1x14x14x256xf32>
    %cst_126 = arith.constant dense<0.00680272094> : tensor<1x14x14x256xf32>
    %cst_127 = arith.constant dense<0.00675675692> : tensor<1x14x14x256xf32>
    %cst_128 = arith.constant dense<0.00671140943> : tensor<1x14x14x256xf32>
    %cst_129 = arith.constant dense<0.00657894742> : tensor<1x14x14x256xf32>
    %cst_130 = arith.constant dense<0.0801265612> : tensor<1x14x14x256xf32>
    %cst_131 = arith.constant dense<0.00653594779> : tensor<1x14x14x256xf32>
    %cst_132 = arith.constant dense<0.00649350649> : tensor<1x14x14x256xf32>
    %cst_133 = arith.constant dense<0.0064516128> : tensor<1x14x14x256xf32>
    %cst_134 = arith.constant dense<6.250000e-03> : tensor<1x14x14x1024xf32>
    %cst_135 = arith.constant dense<0.0772165209> : tensor<1x14x14x1024xf32>
    %cst_136 = arith.constant dense<0.00606060587> : tensor<1x14x14x1024xf32>
    %cst_137 = arith.constant dense<0.00602409616> : tensor<1x14x14x1024xf32>
    %cst_138 = arith.constant dense<0.00598802418> : tensor<1x14x14x1024xf32>
    %cst_139 = arith.constant dense<0.00588235306> : tensor<1x14x14x256xf32>
    %cst_140 = arith.constant dense<7.587580e-02> : tensor<1x14x14x256xf32>
    %cst_141 = arith.constant dense<0.00584795326> : tensor<1x14x14x256xf32>
    %cst_142 = arith.constant dense<0.00581395347> : tensor<1x14x14x256xf32>
    %cst_143 = arith.constant dense<0.00578034669> : tensor<1x14x14x256xf32>
    %cst_144 = arith.constant dense<0.00568181835> : tensor<1x14x14x256xf32>
    %cst_145 = arith.constant dense<0.0746027157> : tensor<1x14x14x256xf32>
    %cst_146 = arith.constant dense<0.00564971752> : tensor<1x14x14x256xf32>
    %cst_147 = arith.constant dense<0.00561797759> : tensor<1x14x14x256xf32>
    %cst_148 = arith.constant dense<0.00558659201> : tensor<1x14x14x256xf32>
    %cst_149 = arith.constant dense<0.00549450563> : tensor<1x14x14x1024xf32>
    %cst_150 = arith.constant dense<0.0733917803> : tensor<1x14x14x1024xf32>
    %cst_151 = arith.constant dense<0.00546448072> : tensor<1x14x14x1024xf32>
    %cst_152 = arith.constant dense<0.00543478271> : tensor<1x14x14x1024xf32>
    %cst_153 = arith.constant dense<0.00540540554> : tensor<1x14x14x1024xf32>
    %cst_154 = arith.constant dense<0.00531914877> : tensor<1x14x14x256xf32>
    %cst_155 = arith.constant dense<7.223810e-02> : tensor<1x14x14x256xf32>
    %cst_156 = arith.constant dense<0.00529100513> : tensor<1x14x14x256xf32>
    %cst_157 = arith.constant dense<0.00526315812> : tensor<1x14x14x256xf32>
    %cst_158 = arith.constant dense<0.00523560215> : tensor<1x14x14x256xf32>
    %cst_159 = arith.constant dense<0.00515463902> : tensor<1x14x14x256xf32>
    %cst_160 = arith.constant dense<0.0711372942> : tensor<1x14x14x256xf32>
    %cst_161 = arith.constant dense<0.00512820529> : tensor<1x14x14x256xf32>
    %cst_162 = arith.constant dense<0.00510204071> : tensor<1x14x14x256xf32>
    %cst_163 = arith.constant dense<0.00507614203> : tensor<1x14x14x256xf32>
    %cst_164 = arith.constant dense<5.000000e-03> : tensor<1x14x14x1024xf32>
    %cst_165 = arith.constant dense<0.070085451> : tensor<1x14x14x1024xf32>
    %cst_166 = arith.constant dense<0.00497512426> : tensor<1x14x14x1024xf32>
    %cst_167 = arith.constant dense<0.00495049497> : tensor<1x14x14x1024xf32>
    %cst_168 = arith.constant dense<0.00492610829> : tensor<1x14x14x1024xf32>
    %cst_169 = arith.constant dense<0.00485436898> : tensor<1x14x14x256xf32>
    %cst_170 = arith.constant dense<0.0690790489> : tensor<1x14x14x256xf32>
    %cst_171 = arith.constant dense<0.00483091781> : tensor<1x14x14x256xf32>
    %cst_172 = arith.constant dense<0.00480769249> : tensor<1x14x14x256xf32>
    %cst_173 = arith.constant dense<0.00478468882> : tensor<1x14x14x256xf32>
    %cst_174 = arith.constant dense<0.0047169812> : tensor<1x14x14x256xf32>
    %cst_175 = arith.constant dense<6.811490e-02> : tensor<1x14x14x256xf32>
    %cst_176 = arith.constant dense<0.00469483575> : tensor<1x14x14x256xf32>
    %cst_177 = arith.constant dense<0.00467289705> : tensor<1x14x14x256xf32>
    %cst_178 = arith.constant dense<0.00465116277> : tensor<1x14x14x256xf32>
    %cst_179 = arith.constant dense<0.00458715577> : tensor<1x14x14x1024xf32>
    %cst_180 = arith.constant dense<0.067190133> : tensor<1x14x14x1024xf32>
    %cst_181 = arith.constant dense<4.566210e-03> : tensor<1x14x14x1024xf32>
    %cst_182 = arith.constant dense<0.0045454544> : tensor<1x14x14x1024xf32>
    %cst_183 = arith.constant dense<0.00452488707> : tensor<1x14x14x1024xf32>
    %cst_184 = arith.constant dense<0.00446428591> : tensor<1x14x14x256xf32>
    %cst_185 = arith.constant dense<0.0663021504> : tensor<1x14x14x256xf32>
    %cst_186 = arith.constant dense<0.00444444455> : tensor<1x14x14x256xf32>
    %cst_187 = arith.constant dense<0.00442477874> : tensor<1x14x14x256xf32>
    %cst_188 = arith.constant dense<0.00440528616> : tensor<1x14x14x256xf32>
    %cst_189 = arith.constant dense<0.00434782589> : tensor<1x14x14x256xf32>
    %cst_190 = arith.constant dense<0.0654485598> : tensor<1x14x14x256xf32>
    %cst_191 = arith.constant dense<0.00432900432> : tensor<1x14x14x256xf32>
    %cst_192 = arith.constant dense<0.00431034481> : tensor<1x14x14x256xf32>
    %cst_193 = arith.constant dense<0.00429184549> : tensor<1x14x14x256xf32>
    %cst_194 = arith.constant dense<0.00423728814> : tensor<1x14x14x1024xf32>
    %cst_195 = arith.constant dense<0.0646272153> : tensor<1x14x14x1024xf32>
    %cst_196 = arith.constant dense<0.00421940908> : tensor<1x14x14x1024xf32>
    %cst_197 = arith.constant dense<0.00420168089> : tensor<1x14x14x1024xf32>
    %cst_198 = arith.constant dense<0.00418410031> : tensor<1x14x14x1024xf32>
    %cst_199 = arith.constant dense<0.00413223123> : tensor<1x14x14x256xf32>
    %cst_200 = arith.constant dense<0.0638361201> : tensor<1x14x14x256xf32>
    %cst_201 = arith.constant dense<0.00411522621> : tensor<1x14x14x256xf32>
    %cst_202 = arith.constant dense<0.00409836043> : tensor<1x14x14x256xf32>
    %cst_203 = arith.constant dense<0.00408163248> : tensor<1x14x14x256xf32>
    %cst_204 = arith.constant dense<0.00403225794> : tensor<1x14x14x256xf32>
    %cst_205 = arith.constant dense<0.0630734786> : tensor<1x14x14x256xf32>
    %cst_206 = arith.constant dense<0.00401606411> : tensor<1x14x14x256xf32>
    %cst_207 = arith.constant dense<4.000000e-03> : tensor<1x14x14x256xf32>
    %cst_208 = arith.constant dense<0.00398406386> : tensor<1x14x14x256xf32>
    %cst_209 = arith.constant dense<0.00393700786> : tensor<1x14x14x1024xf32>
    %cst_210 = arith.constant dense<0.062337622> : tensor<1x14x14x1024xf32>
    %cst_211 = arith.constant dense<0.00392156886> : tensor<1x14x14x1024xf32>
    %cst_212 = arith.constant dense<3.906250e-03> : tensor<1x14x14x1024xf32>
    %cst_213 = arith.constant dense<0.00389105058> : tensor<1x14x14x1024xf32>
    %cst_214 = arith.constant dense<0.0036764706> : tensor<1x7x7x2048xf32>
    %cst_215 = arith.constant dense<0.0600594096> : tensor<1x7x7x2048xf32>
    %cst_216 = arith.constant dense<0.00363636366> : tensor<1x7x7x2048xf32>
    %cst_217 = arith.constant dense<0.00362318847> : tensor<1x7x7x2048xf32>
    %cst_218 = arith.constant dense<0.00361010828> : tensor<1x7x7x2048xf32>
    %cst_219 = arith.constant dense<0.00384615385> : tensor<1x7x7x512xf32>
    %cst_220 = arith.constant dense<0.0616270155> : tensor<1x7x7x512xf32>
    %cst_221 = arith.constant dense<0.00383141753> : tensor<1x7x7x512xf32>
    %cst_222 = arith.constant dense<0.00381679391> : tensor<1x7x7x512xf32>
    %cst_223 = arith.constant dense<0.00380228134> : tensor<1x7x7x512xf32>
    %cst_224 = arith.constant dense<0.00375939859> : tensor<1x7x7x512xf32>
    %cst_225 = arith.constant dense<0.060940247> : tensor<1x7x7x512xf32>
    %cst_226 = arith.constant dense<0.00374531839> : tensor<1x7x7x512xf32>
    %cst_227 = arith.constant dense<0.0037313432> : tensor<1x7x7x512xf32>
    %cst_228 = arith.constant dense<0.00371747208> : tensor<1x7x7x512xf32>
    %cst_229 = arith.constant dense<0.00364963501> : tensor<1x7x7x2048xf32>
    %cst_230 = arith.constant dense<0.0596331209> : tensor<1x7x7x2048xf32>
    %cst_231 = arith.constant dense<0.00358422939> : tensor<1x7x7x2048xf32>
    %cst_232 = arith.constant dense<0.00357142859> : tensor<1x7x7x2048xf32>
    %cst_233 = arith.constant dense<0.00355871883> : tensor<1x7x7x2048xf32>
    %cst_234 = arith.constant dense<0.00352112669> : tensor<1x7x7x512xf32>
    %cst_235 = arith.constant dense<0.0590104423> : tensor<1x7x7x512xf32>
    %cst_236 = arith.constant dense<0.003508772> : tensor<1x7x7x512xf32>
    %cst_237 = arith.constant dense<0.00349650346> : tensor<1x7x7x512xf32>
    %cst_238 = arith.constant dense<0.00348432059> : tensor<1x7x7x512xf32>
    %cst_239 = arith.constant dense<0.00344827585> : tensor<1x7x7x512xf32>
    %cst_240 = arith.constant dense<0.0584069379> : tensor<1x7x7x512xf32>
    %cst_241 = arith.constant dense<0.00343642617> : tensor<1x7x7x512xf32>
    %cst_242 = arith.constant dense<0.00342465751> : tensor<1x7x7x512xf32>
    %cst_243 = arith.constant dense<0.00341296918> : tensor<1x7x7x512xf32>
    %cst_244 = arith.constant dense<0.00337837846> : tensor<1x7x7x2048xf32>
    %cst_245 = arith.constant dense<0.0578216538> : tensor<1x7x7x2048xf32>
    %cst_246 = arith.constant dense<0.00336700329> : tensor<1x7x7x2048xf32>
    %cst_247 = arith.constant dense<0.00335570471> : tensor<1x7x7x2048xf32>
    %cst_248 = arith.constant dense<0.00334448158> : tensor<1x7x7x2048xf32>
    %cst_249 = arith.constant dense<0.00331125828> : tensor<1x7x7x512xf32>
    %cst_250 = arith.constant dense<0.0572536811> : tensor<1x7x7x512xf32>
    %cst_251 = arith.constant dense<0.00330033014> : tensor<1x7x7x512xf32>
    %cst_252 = arith.constant dense<0.00328947371> : tensor<1x7x7x512xf32>
    %cst_253 = arith.constant dense<0.00327868853> : tensor<1x7x7x512xf32>
    %cst_254 = arith.constant dense<0.00324675324> : tensor<1x7x7x512xf32>
    %cst_255 = arith.constant dense<0.0567021891> : tensor<1x7x7x512xf32>
    %cst_256 = arith.constant dense<0.00323624606> : tensor<1x7x7x512xf32>
    %cst_257 = arith.constant dense<0.0032258064> : tensor<1x7x7x512xf32>
    %cst_258 = arith.constant dense<0.00321543403> : tensor<1x7x7x512xf32>
    %cst_259 = arith.constant dense<0.00318471342> : tensor<1x7x7x2048xf32>
    %cst_260 = arith.constant dense<0.0561663955> : tensor<1x7x7x2048xf32>
    %cst_261 = arith.constant dense<0.00317460322> : tensor<1x7x7x2048xf32>
    %cst_262 = arith.constant dense<0.00316455704> : tensor<1x7x7x2048xf32>
    %cst_263 = arith.constant dense<0.00315457419> : tensor<1x7x7x2048xf32>
    %cst_264 = arith.constant dense<3.125000e-03> : tensor<1x1000xf32>
    %cst_265 = arith.constant dense<0.000000e+00> : tensor<1x112x112x64xf32>
    %cst_266 = arith.constant dense<0.000000e+00> : tensor<1x56x56x64xf32>
    %cst_267 = arith.constant dense<0.000000e+00> : tensor<1x56x56x256xf32>
    %cst_268 = arith.constant dense<0.000000e+00> : tensor<1x28x28x128xf32>
    %cst_269 = arith.constant dense<0.000000e+00> : tensor<1x28x28x512xf32>
    %cst_270 = arith.constant dense<0.000000e+00> : tensor<1x14x14x256xf32>
    %cst_271 = arith.constant dense<0.000000e+00> : tensor<1x14x14x1024xf32>
    %cst_272 = arith.constant dense<0.000000e+00> : tensor<1x7x7x512xf32>
    %cst_273 = arith.constant dense<0.000000e+00> : tensor<1x7x7x2048xf32>
    %cst_274 = arith.constant dense<4.900000e+01> : tensor<1x2048xf32>
    %cst_275 = arith.constant dense<0xFF800000> : tensor<f32>
    %cst_276 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_277 = arith.constant dense<1.000000e+00> : tensor<7x7x3x64xf32>
    %cst_278 = arith.constant dense<0.0526315793> : tensor<1x1x64x256xf32>
    %cst_279 = arith.constant dense<0.142857149> : tensor<1x1x64x64xf32>
    %cst_280 = arith.constant dense<0.0769230798> : tensor<3x3x64x64xf32>
    %cst_281 = arith.constant dense<0.0476190485> : tensor<1x1x64x256xf32>
    %cst_282 = arith.constant dense<0.0322580636> : tensor<1x1x256x64xf32>
    %cst_283 = arith.constant dense<0.0270270277> : tensor<3x3x64x64xf32>
    %cst_284 = arith.constant dense<0.0232558139> : tensor<1x1x64x256xf32>
    %cst_285 = arith.constant dense<0.0204081628> : tensor<1x1x256x64xf32>
    %cst_286 = arith.constant dense<0.0181818176> : tensor<3x3x64x64xf32>
    %cst_287 = arith.constant dense<0.0163934417> : tensor<1x1x64x256xf32>
    %cst_288 = arith.constant dense<0.0126582282> : tensor<1x1x256x512xf32>
    %cst_289 = arith.constant dense<0.0149253728> : tensor<1x1x256x128xf32>
    %cst_290 = arith.constant dense<0.01369863> : tensor<3x3x128x128xf32>
    %cst_291 = arith.constant dense<0.0123456791> : tensor<1x1x128x512xf32>
    %cst_292 = arith.constant dense<0.0109890113> : tensor<1x1x512x128xf32>
    %cst_293 = arith.constant dense<0.010309278> : tensor<3x3x128x128xf32>
    %cst_294 = arith.constant dense<0.00970873795> : tensor<1x1x128x512xf32>
    %cst_295 = arith.constant dense<0.00917431153> : tensor<1x1x512x128xf32>
    %cst_296 = arith.constant dense<0.00869565178> : tensor<3x3x128x128xf32>
    %cst_297 = arith.constant dense<0.00826446246> : tensor<1x1x128x512xf32>
    %cst_298 = arith.constant dense<0.00787401571> : tensor<1x1x512x128xf32>
    %cst_299 = arith.constant dense<0.00751879718> : tensor<3x3x128x128xf32>
    %cst_300 = arith.constant dense<0.00719424477> : tensor<1x1x128x512xf32>
    %cst_301 = arith.constant dense<0.00636942684> : tensor<1x1x512x1024xf32>
    %cst_302 = arith.constant dense<0.0068965517> : tensor<1x1x512x256xf32>
    %cst_303 = arith.constant dense<0.00662251655> : tensor<3x3x256x256xf32>
    %cst_304 = arith.constant dense<0.00628930796> : tensor<1x1x256x1024xf32>
    %cst_305 = arith.constant dense<5.917160e-03> : tensor<1x1x1024x256xf32>
    %cst_306 = arith.constant dense<0.00571428565> : tensor<3x3x256x256xf32>
    %cst_307 = arith.constant dense<0.00552486209> : tensor<1x1x256x1024xf32>
    %cst_308 = arith.constant dense<0.00534759369> : tensor<1x1x1024x256xf32>
    %cst_309 = arith.constant dense<0.00518134702> : tensor<3x3x256x256xf32>
    %cst_310 = arith.constant dense<0.00502512557> : tensor<1x1x256x1024xf32>
    %cst_311 = arith.constant dense<0.00487804879> : tensor<1x1x1024x256xf32>
    %cst_312 = arith.constant dense<0.00473933667> : tensor<3x3x256x256xf32>
    %cst_313 = arith.constant dense<0.00460829493> : tensor<1x1x256x1024xf32>
    %cst_314 = arith.constant dense<0.00448430516> : tensor<1x1x1024x256xf32>
    %cst_315 = arith.constant dense<0.0043668123> : tensor<3x3x256x256xf32>
    %cst_316 = arith.constant dense<0.00425531901> : tensor<1x1x256x1024xf32>
    %cst_317 = arith.constant dense<0.00414937781> : tensor<1x1x1024x256xf32>
    %cst_318 = arith.constant dense<0.0040485831> : tensor<3x3x256x256xf32>
    %cst_319 = arith.constant dense<0.00395256933> : tensor<1x1x256x1024xf32>
    %cst_320 = arith.constant dense<0.00369003695> : tensor<1x1x1024x2048xf32>
    %cst_321 = arith.constant dense<0.00386100379> : tensor<1x1x1024x512xf32>
    %cst_322 = arith.constant dense<0.00377358496> : tensor<3x3x512x512xf32>
    %cst_323 = arith.constant dense<0.00366300368> : tensor<1x1x512x2048xf32>
    %cst_324 = arith.constant dense<0.00353356893> : tensor<1x1x2048x512xf32>
    %cst_325 = arith.constant dense<0.00346020772> : tensor<3x3x512x512xf32>
    %cst_326 = arith.constant dense<0.00338983047> : tensor<1x1x512x2048xf32>
    %cst_327 = arith.constant dense<0.00332225906> : tensor<1x1x2048x512xf32>
    %cst_328 = arith.constant dense<0.00325732888> : tensor<3x3x512x512xf32>
    %cst_329 = arith.constant dense<0.00319488812> : tensor<1x1x512x2048xf32>
    %cst_330 = arith.constant dense<0.00313479616> : tensor<2048x1000xf32>
    %cst_331 = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [1, 230, 230, 3] : tensor<1x230x230x3xf32>
    %1 = linalg.fill ins(%cst_331 : f32) outs(%0 : tensor<1x230x230x3xf32>) -> tensor<1x230x230x3xf32>
    %2 = tensor.insert_slice %arg0 into %1[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x224x224x3xf32> into tensor<1x230x230x3xf32>
    %3 = linalg.init_tensor [1, 112, 112, 64] : tensor<1x112x112x64xf32>
    %cst_332 = arith.constant 0.000000e+00 : f32
    %4 = linalg.fill ins(%cst_332 : f32) outs(%3 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %5 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%2, %cst_277 : tensor<1x230x230x3xf32>, tensor<7x7x3x64xf32>) outs(%4 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %6 = linalg.init_tensor [1, 112, 112, 64] : tensor<1x112x112x64xf32>
    %7 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %cst : tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%6 : tensor<1x112x112x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x112x112x64xf32>
    %8 = linalg.init_tensor [1, 112, 112, 64] : tensor<1x112x112x64xf32>
    %9 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_3 : tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%8 : tensor<1x112x112x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x112x112x64xf32>
    %10 = linalg.init_tensor [1, 112, 112, 64] : tensor<1x112x112x64xf32>
    %11 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %cst_1 : tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%10 : tensor<1x112x112x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x112x112x64xf32>
    %12 = linalg.init_tensor [1, 112, 112, 64] : tensor<1x112x112x64xf32>
    %13 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_0 : tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%12 : tensor<1x112x112x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x112x112x64xf32>
    %14 = linalg.init_tensor [1, 112, 112, 64] : tensor<1x112x112x64xf32>
    %15 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %cst_2 : tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%14 : tensor<1x112x112x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x112x112x64xf32>
    %16 = linalg.init_tensor [1, 112, 112, 64] : tensor<1x112x112x64xf32>
    %17 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %cst_265 : tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%16 : tensor<1x112x112x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x112x112x64xf32>
    %cst_333 = arith.constant 0.000000e+00 : f32
    %18 = linalg.init_tensor [1, 114, 114, 64] : tensor<1x114x114x64xf32>
    %19 = linalg.fill ins(%cst_333 : f32) outs(%18 : tensor<1x114x114x64xf32>) -> tensor<1x114x114x64xf32>
    %20 = tensor.insert_slice %17 into %19[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x112x112x64xf32> into tensor<1x114x114x64xf32>
    %21 = linalg.init_tensor [3, 3] : tensor<3x3xf32>
    %22 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %cst_334 = arith.constant 0xFF800000 : f32
    %23 = linalg.fill ins(%cst_334 : f32) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %24 = linalg.pooling_nhwc_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%20, %21 : tensor<1x114x114x64xf32>, tensor<3x3xf32>) outs(%23 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %25 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %cst_335 = arith.constant 0.000000e+00 : f32
    %26 = linalg.fill ins(%cst_335 : f32) outs(%25 : tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %27 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%24, %cst_278 : tensor<1x56x56x64xf32>, tensor<1x1x64x256xf32>) outs(%26 : tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %28 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %29 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_4 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%28 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %30 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %31 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_8 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%30 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %32 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %33 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %cst_6 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%32 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %34 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %35 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %cst_5 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%34 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %36 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %37 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_7 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%36 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %38 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %cst_336 = arith.constant 0.000000e+00 : f32
    %39 = linalg.fill ins(%cst_336 : f32) outs(%38 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %40 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%24, %cst_279 : tensor<1x56x56x64xf32>, tensor<1x1x64x64xf32>) outs(%39 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %41 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %42 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %cst_9 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%41 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %43 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %44 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %cst_13 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%43 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %45 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %46 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %cst_11 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%45 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %47 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %48 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_10 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%47 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %49 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %50 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_12 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%49 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %51 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %52 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_266 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%51 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x64xf32>
    %53 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %cst_337 = arith.constant 0.000000e+00 : f32
    %54 = linalg.fill ins(%cst_337 : f32) outs(%53 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %cst_338 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_339 = arith.constant 0.000000e+00 : f32
    %55 = linalg.init_tensor [1, 58, 58, 64] : tensor<1x58x58x64xf32>
    %56 = linalg.fill ins(%cst_339 : f32) outs(%55 : tensor<1x58x58x64xf32>) -> tensor<1x58x58x64xf32>
    %57 = tensor.insert_slice %52 into %56[0, 1, 1, 0] [1, 56, 56, 64] [1, 1, 1, 1] : tensor<1x56x56x64xf32> into tensor<1x58x58x64xf32>
    %58 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%57, %cst_280 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%54 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %59 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %60 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %cst_14 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%59 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %61 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %62 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %cst_18 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%61 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %63 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %64 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_16 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%63 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %65 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %66 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %cst_15 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%65 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %67 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %68 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_17 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%67 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %69 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %70 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_266 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%69 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x64xf32>
    %71 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %cst_340 = arith.constant 0.000000e+00 : f32
    %72 = linalg.fill ins(%cst_340 : f32) outs(%71 : tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %73 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%70, %cst_281 : tensor<1x56x56x64xf32>, tensor<1x1x64x256xf32>) outs(%72 : tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %74 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %75 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_19 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%74 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %76 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %77 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_23 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%76 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %78 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %79 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %cst_21 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%78 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %80 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %81 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_20 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%80 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %82 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %83 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_22 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%82 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %84 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %85 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %83 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%84 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %86 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %87 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_267 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%86 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x256xf32>
    %88 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %cst_341 = arith.constant 0.000000e+00 : f32
    %89 = linalg.fill ins(%cst_341 : f32) outs(%88 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %90 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%87, %cst_282 : tensor<1x56x56x256xf32>, tensor<1x1x256x64xf32>) outs(%89 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %91 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %92 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %cst_24 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%91 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %93 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %94 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %cst_28 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%93 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %95 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %96 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %cst_26 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%95 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %97 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %98 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %cst_25 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%97 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %99 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %100 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_27 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%99 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %101 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %102 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_266 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%101 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x64xf32>
    %103 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %cst_342 = arith.constant 0.000000e+00 : f32
    %104 = linalg.fill ins(%cst_342 : f32) outs(%103 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %cst_343 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_344 = arith.constant 0.000000e+00 : f32
    %105 = linalg.init_tensor [1, 58, 58, 64] : tensor<1x58x58x64xf32>
    %106 = linalg.fill ins(%cst_344 : f32) outs(%105 : tensor<1x58x58x64xf32>) -> tensor<1x58x58x64xf32>
    %107 = tensor.insert_slice %102 into %106[0, 1, 1, 0] [1, 56, 56, 64] [1, 1, 1, 1] : tensor<1x56x56x64xf32> into tensor<1x58x58x64xf32>
    %108 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%107, %cst_283 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%104 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %109 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %110 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %cst_29 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%109 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %111 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %112 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %cst_33 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%111 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %113 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %114 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %cst_31 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%113 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %115 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %116 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_30 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%115 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %117 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %118 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_32 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%117 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %119 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %120 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_266 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%119 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x64xf32>
    %121 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %cst_345 = arith.constant 0.000000e+00 : f32
    %122 = linalg.fill ins(%cst_345 : f32) outs(%121 : tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %123 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%120, %cst_284 : tensor<1x56x56x64xf32>, tensor<1x1x64x256xf32>) outs(%122 : tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %124 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %125 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %cst_34 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%124 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %126 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %127 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %cst_38 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%126 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %128 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %129 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %cst_36 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%128 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %130 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %131 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %cst_35 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%130 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %132 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %133 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_37 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%132 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %134 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %135 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %133 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%134 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %136 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %137 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_267 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%136 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x256xf32>
    %138 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %cst_346 = arith.constant 0.000000e+00 : f32
    %139 = linalg.fill ins(%cst_346 : f32) outs(%138 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %140 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%137, %cst_285 : tensor<1x56x56x256xf32>, tensor<1x1x256x64xf32>) outs(%139 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %141 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %142 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %cst_39 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%141 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %143 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %144 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %cst_43 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%143 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %145 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %146 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_41 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%145 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %147 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %148 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %cst_40 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%147 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %149 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %150 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %cst_42 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%149 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %151 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %152 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %cst_266 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%151 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x64xf32>
    %153 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %cst_347 = arith.constant 0.000000e+00 : f32
    %154 = linalg.fill ins(%cst_347 : f32) outs(%153 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %cst_348 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_349 = arith.constant 0.000000e+00 : f32
    %155 = linalg.init_tensor [1, 58, 58, 64] : tensor<1x58x58x64xf32>
    %156 = linalg.fill ins(%cst_349 : f32) outs(%155 : tensor<1x58x58x64xf32>) -> tensor<1x58x58x64xf32>
    %157 = tensor.insert_slice %152 into %156[0, 1, 1, 0] [1, 56, 56, 64] [1, 1, 1, 1] : tensor<1x56x56x64xf32> into tensor<1x58x58x64xf32>
    %158 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%157, %cst_286 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%154 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %159 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %160 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %cst_44 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%159 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %161 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %162 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_48 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%161 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %163 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %164 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_46 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%163 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %165 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %166 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_45 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%165 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %167 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %168 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %cst_47 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%167 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x64xf32>
    %169 = linalg.init_tensor [1, 56, 56, 64] : tensor<1x56x56x64xf32>
    %170 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_266 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%169 : tensor<1x56x56x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x64xf32>
    %171 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %cst_350 = arith.constant 0.000000e+00 : f32
    %172 = linalg.fill ins(%cst_350 : f32) outs(%171 : tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %173 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%170, %cst_287 : tensor<1x56x56x64xf32>, tensor<1x1x64x256xf32>) outs(%172 : tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %174 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %175 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %cst_49 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%174 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %176 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %177 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_53 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%176 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %178 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %179 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_51 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%178 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %180 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %181 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_50 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%180 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %182 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %183 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %cst_52 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%182 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %184 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %185 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %183 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%184 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x56x56x256xf32>
    %186 = linalg.init_tensor [1, 56, 56, 256] : tensor<1x56x56x256xf32>
    %187 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %cst_267 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%186 : tensor<1x56x56x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x56x56x256xf32>
    %188 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %cst_351 = arith.constant 0.000000e+00 : f32
    %189 = linalg.fill ins(%cst_351 : f32) outs(%188 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %190 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%187, %cst_288 : tensor<1x56x56x256xf32>, tensor<1x1x256x512xf32>) outs(%189 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %191 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %192 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %cst_54 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%191 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %193 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %194 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %cst_58 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%193 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %195 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %196 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_56 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%195 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %197 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %198 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst_55 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%197 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %199 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %200 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_57 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%199 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %201 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %cst_352 = arith.constant 0.000000e+00 : f32
    %202 = linalg.fill ins(%cst_352 : f32) outs(%201 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %203 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%187, %cst_289 : tensor<1x56x56x256xf32>, tensor<1x1x256x128xf32>) outs(%202 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %204 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %205 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %cst_59 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%204 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %206 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %207 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %cst_63 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%206 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %208 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %209 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %cst_61 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%208 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %210 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %211 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %cst_60 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%210 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %212 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %213 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_62 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%212 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %214 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %215 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %cst_268 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%214 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x128xf32>
    %216 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %cst_353 = arith.constant 0.000000e+00 : f32
    %217 = linalg.fill ins(%cst_353 : f32) outs(%216 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %cst_354 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_355 = arith.constant 0.000000e+00 : f32
    %218 = linalg.init_tensor [1, 30, 30, 128] : tensor<1x30x30x128xf32>
    %219 = linalg.fill ins(%cst_355 : f32) outs(%218 : tensor<1x30x30x128xf32>) -> tensor<1x30x30x128xf32>
    %220 = tensor.insert_slice %215 into %219[0, 1, 1, 0] [1, 28, 28, 128] [1, 1, 1, 1] : tensor<1x28x28x128xf32> into tensor<1x30x30x128xf32>
    %221 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%220, %cst_290 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%217 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %222 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %223 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_64 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%222 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %224 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %225 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %cst_68 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%224 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %226 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %227 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %cst_66 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%226 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %228 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %229 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %cst_65 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%228 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %230 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %231 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %cst_67 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%230 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %232 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %233 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_268 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%232 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x128xf32>
    %234 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %cst_356 = arith.constant 0.000000e+00 : f32
    %235 = linalg.fill ins(%cst_356 : f32) outs(%234 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %236 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%233, %cst_291 : tensor<1x28x28x128xf32>, tensor<1x1x128x512xf32>) outs(%235 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %237 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %238 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %cst_69 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%237 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %239 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %240 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %cst_73 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%239 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %241 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %242 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %cst_71 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%241 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %243 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %244 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %cst_70 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%243 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %245 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %246 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_72 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%245 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %247 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %248 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %246 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%247 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %249 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %250 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %cst_269 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%249 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x512xf32>
    %251 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %cst_357 = arith.constant 0.000000e+00 : f32
    %252 = linalg.fill ins(%cst_357 : f32) outs(%251 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %253 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%250, %cst_292 : tensor<1x28x28x512xf32>, tensor<1x1x512x128xf32>) outs(%252 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %254 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %255 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_74 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%254 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %256 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %257 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %cst_78 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%256 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %258 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %259 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %cst_76 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%258 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %260 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %261 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %cst_75 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%260 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %262 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %263 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_77 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%262 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %264 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %265 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %cst_268 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%264 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x128xf32>
    %266 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %cst_358 = arith.constant 0.000000e+00 : f32
    %267 = linalg.fill ins(%cst_358 : f32) outs(%266 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %cst_359 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_360 = arith.constant 0.000000e+00 : f32
    %268 = linalg.init_tensor [1, 30, 30, 128] : tensor<1x30x30x128xf32>
    %269 = linalg.fill ins(%cst_360 : f32) outs(%268 : tensor<1x30x30x128xf32>) -> tensor<1x30x30x128xf32>
    %270 = tensor.insert_slice %265 into %269[0, 1, 1, 0] [1, 28, 28, 128] [1, 1, 1, 1] : tensor<1x28x28x128xf32> into tensor<1x30x30x128xf32>
    %271 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%270, %cst_293 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%267 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %272 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %273 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %cst_79 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%272 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %274 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %275 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %cst_83 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%274 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %276 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %277 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %cst_81 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%276 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %278 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %279 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_80 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%278 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %280 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %281 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %cst_82 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%280 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %282 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %283 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_268 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%282 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x128xf32>
    %284 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %cst_361 = arith.constant 0.000000e+00 : f32
    %285 = linalg.fill ins(%cst_361 : f32) outs(%284 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %286 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%283, %cst_294 : tensor<1x28x28x128xf32>, tensor<1x1x128x512xf32>) outs(%285 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %287 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %288 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286, %cst_84 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%287 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %289 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %290 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %cst_88 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%289 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %291 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %292 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290, %cst_86 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%291 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %293 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %294 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %cst_85 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%293 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %295 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %296 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_87 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%295 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %297 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %298 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %296 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%297 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %299 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %300 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %cst_269 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%299 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x512xf32>
    %301 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %cst_362 = arith.constant 0.000000e+00 : f32
    %302 = linalg.fill ins(%cst_362 : f32) outs(%301 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %303 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%300, %cst_295 : tensor<1x28x28x512xf32>, tensor<1x1x512x128xf32>) outs(%302 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %304 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %305 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %cst_89 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%304 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %306 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %307 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %cst_93 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%306 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %308 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %309 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %cst_91 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%308 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %310 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %311 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %cst_90 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%310 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %312 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %313 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_92 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%312 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %314 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %315 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %cst_268 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%314 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x128xf32>
    %316 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %cst_363 = arith.constant 0.000000e+00 : f32
    %317 = linalg.fill ins(%cst_363 : f32) outs(%316 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %cst_364 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_365 = arith.constant 0.000000e+00 : f32
    %318 = linalg.init_tensor [1, 30, 30, 128] : tensor<1x30x30x128xf32>
    %319 = linalg.fill ins(%cst_365 : f32) outs(%318 : tensor<1x30x30x128xf32>) -> tensor<1x30x30x128xf32>
    %320 = tensor.insert_slice %315 into %319[0, 1, 1, 0] [1, 28, 28, 128] [1, 1, 1, 1] : tensor<1x28x28x128xf32> into tensor<1x30x30x128xf32>
    %321 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%320, %cst_296 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%317 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %322 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %323 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_94 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%322 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %324 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %325 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %cst_98 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%324 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %326 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %327 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %cst_96 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%326 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %328 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %329 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst_95 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%328 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %330 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %331 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %cst_97 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%330 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %332 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %333 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_268 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%332 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x128xf32>
    %334 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %cst_366 = arith.constant 0.000000e+00 : f32
    %335 = linalg.fill ins(%cst_366 : f32) outs(%334 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %336 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%333, %cst_297 : tensor<1x28x28x128xf32>, tensor<1x1x128x512xf32>) outs(%335 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %337 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %338 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %cst_99 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%337 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %339 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %340 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_103 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%339 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %341 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %342 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_101 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%341 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %343 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %344 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %cst_100 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%343 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %345 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %346 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_102 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%345 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %347 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %348 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %346 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%347 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %349 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %350 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %cst_269 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%349 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x512xf32>
    %351 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %cst_367 = arith.constant 0.000000e+00 : f32
    %352 = linalg.fill ins(%cst_367 : f32) outs(%351 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %353 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%350, %cst_298 : tensor<1x28x28x512xf32>, tensor<1x1x512x128xf32>) outs(%352 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %354 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %355 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353, %cst_104 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%354 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %356 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %357 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %cst_108 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%356 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %358 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %359 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_106 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%358 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %360 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %361 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_105 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%360 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %362 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %363 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %cst_107 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%362 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %364 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %365 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_268 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%364 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x128xf32>
    %366 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %cst_368 = arith.constant 0.000000e+00 : f32
    %367 = linalg.fill ins(%cst_368 : f32) outs(%366 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %cst_369 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_370 = arith.constant 0.000000e+00 : f32
    %368 = linalg.init_tensor [1, 30, 30, 128] : tensor<1x30x30x128xf32>
    %369 = linalg.fill ins(%cst_370 : f32) outs(%368 : tensor<1x30x30x128xf32>) -> tensor<1x30x30x128xf32>
    %370 = tensor.insert_slice %365 into %369[0, 1, 1, 0] [1, 28, 28, 128] [1, 1, 1, 1] : tensor<1x28x28x128xf32> into tensor<1x30x30x128xf32>
    %371 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%370, %cst_299 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%367 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %372 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %373 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %cst_109 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%372 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %374 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %375 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %cst_113 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%374 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %376 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %377 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %cst_111 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%376 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %378 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %379 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %cst_110 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%378 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %380 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %381 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %cst_112 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%380 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x128xf32>
    %382 = linalg.init_tensor [1, 28, 28, 128] : tensor<1x28x28x128xf32>
    %383 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381, %cst_268 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%382 : tensor<1x28x28x128xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x128xf32>
    %384 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %cst_371 = arith.constant 0.000000e+00 : f32
    %385 = linalg.fill ins(%cst_371 : f32) outs(%384 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %386 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%383, %cst_300 : tensor<1x28x28x128xf32>, tensor<1x1x128x512xf32>) outs(%385 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %387 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %388 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386, %cst_114 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%387 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %389 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %390 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %cst_118 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%389 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %391 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %392 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %cst_116 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%391 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %393 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %394 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %cst_115 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%393 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %395 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %396 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %cst_117 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%395 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %397 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %398 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %396 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%397 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x28x28x512xf32>
    %399 = linalg.init_tensor [1, 28, 28, 512] : tensor<1x28x28x512xf32>
    %400 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %cst_269 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%399 : tensor<1x28x28x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x28x28x512xf32>
    %401 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %cst_372 = arith.constant 0.000000e+00 : f32
    %402 = linalg.fill ins(%cst_372 : f32) outs(%401 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %403 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%400, %cst_301 : tensor<1x28x28x512xf32>, tensor<1x1x512x1024xf32>) outs(%402 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %404 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %405 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %cst_119 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%404 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %406 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %407 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405, %cst_123 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %408 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %409 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %cst_121 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%408 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %410 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %411 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %cst_120 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%410 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %412 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %413 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %cst_122 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%412 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %414 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_373 = arith.constant 0.000000e+00 : f32
    %415 = linalg.fill ins(%cst_373 : f32) outs(%414 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %416 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%400, %cst_302 : tensor<1x28x28x512xf32>, tensor<1x1x512x256xf32>) outs(%415 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %417 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %418 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %cst_124 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%417 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %419 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %420 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %cst_128 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%419 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %421 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %422 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %cst_126 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%421 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %423 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %424 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_125 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %425 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %426 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %cst_127 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%425 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %427 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %428 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%427 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %429 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_374 = arith.constant 0.000000e+00 : f32
    %430 = linalg.fill ins(%cst_374 : f32) outs(%429 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %cst_375 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_376 = arith.constant 0.000000e+00 : f32
    %431 = linalg.init_tensor [1, 16, 16, 256] : tensor<1x16x16x256xf32>
    %432 = linalg.fill ins(%cst_376 : f32) outs(%431 : tensor<1x16x16x256xf32>) -> tensor<1x16x16x256xf32>
    %433 = tensor.insert_slice %428 into %432[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x14x14x256xf32> into tensor<1x16x16x256xf32>
    %434 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%433, %cst_303 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%430 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %435 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %436 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_129 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%435 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %437 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %438 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %cst_133 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%437 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %439 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %440 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %cst_131 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%439 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %441 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %442 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440, %cst_130 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%441 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %443 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %444 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %cst_132 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%443 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %445 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %446 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%445 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %447 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %cst_377 = arith.constant 0.000000e+00 : f32
    %448 = linalg.fill ins(%cst_377 : f32) outs(%447 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %449 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%446, %cst_304 : tensor<1x14x14x256xf32>, tensor<1x1x256x1024xf32>) outs(%448 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %450 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %451 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %cst_134 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%450 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %452 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %453 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_138 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%452 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %454 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %455 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %cst_136 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%454 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %456 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %457 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %cst_135 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%456 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %458 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %459 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457, %cst_137 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%458 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %460 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %461 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %459 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%460 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %462 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %463 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461, %cst_271 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%462 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x1024xf32>
    %464 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_378 = arith.constant 0.000000e+00 : f32
    %465 = linalg.fill ins(%cst_378 : f32) outs(%464 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %466 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%463, %cst_305 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x256xf32>) outs(%465 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %467 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %468 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466, %cst_139 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%467 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %469 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %470 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %cst_143 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%469 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %471 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %472 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %cst_141 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%471 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %473 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %474 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %cst_140 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%473 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %475 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %476 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %cst_142 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%475 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %477 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %478 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%477 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %479 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_379 = arith.constant 0.000000e+00 : f32
    %480 = linalg.fill ins(%cst_379 : f32) outs(%479 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %cst_380 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_381 = arith.constant 0.000000e+00 : f32
    %481 = linalg.init_tensor [1, 16, 16, 256] : tensor<1x16x16x256xf32>
    %482 = linalg.fill ins(%cst_381 : f32) outs(%481 : tensor<1x16x16x256xf32>) -> tensor<1x16x16x256xf32>
    %483 = tensor.insert_slice %478 into %482[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x14x14x256xf32> into tensor<1x16x16x256xf32>
    %484 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%483, %cst_306 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%480 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %485 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %486 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %cst_144 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%485 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %487 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %488 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %cst_148 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%487 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %489 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %490 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %cst_146 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%489 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %491 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %492 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %cst_145 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%491 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %493 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %494 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %cst_147 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%493 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %495 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %496 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%495 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %497 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %cst_382 = arith.constant 0.000000e+00 : f32
    %498 = linalg.fill ins(%cst_382 : f32) outs(%497 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %499 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%496, %cst_307 : tensor<1x14x14x256xf32>, tensor<1x1x256x1024xf32>) outs(%498 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %500 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %501 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499, %cst_149 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%500 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %502 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %503 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %cst_153 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%502 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %504 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %505 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %cst_151 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%504 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %506 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %507 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505, %cst_150 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%506 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %508 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %509 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507, %cst_152 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%508 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %510 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %511 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %509 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%510 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %512 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %513 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %cst_271 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%512 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x1024xf32>
    %514 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_383 = arith.constant 0.000000e+00 : f32
    %515 = linalg.fill ins(%cst_383 : f32) outs(%514 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %516 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%513, %cst_308 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x256xf32>) outs(%515 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %517 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %518 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %cst_154 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%517 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %519 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %520 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %cst_158 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%519 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %521 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %522 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %cst_156 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%521 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %523 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %524 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %cst_155 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%523 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %525 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %526 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524, %cst_157 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%525 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %527 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %528 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%527 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %529 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_384 = arith.constant 0.000000e+00 : f32
    %530 = linalg.fill ins(%cst_384 : f32) outs(%529 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %cst_385 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_386 = arith.constant 0.000000e+00 : f32
    %531 = linalg.init_tensor [1, 16, 16, 256] : tensor<1x16x16x256xf32>
    %532 = linalg.fill ins(%cst_386 : f32) outs(%531 : tensor<1x16x16x256xf32>) -> tensor<1x16x16x256xf32>
    %533 = tensor.insert_slice %528 into %532[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x14x14x256xf32> into tensor<1x16x16x256xf32>
    %534 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%533, %cst_309 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%530 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %535 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %536 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %cst_159 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%535 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %537 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %538 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %cst_163 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%537 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %539 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %540 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %cst_161 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%539 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %541 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %542 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540, %cst_160 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%541 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %543 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %544 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %cst_162 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%543 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %545 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %546 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%545 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %547 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %cst_387 = arith.constant 0.000000e+00 : f32
    %548 = linalg.fill ins(%cst_387 : f32) outs(%547 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %549 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%546, %cst_310 : tensor<1x14x14x256xf32>, tensor<1x1x256x1024xf32>) outs(%548 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %550 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %551 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549, %cst_164 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%550 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %552 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %553 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %cst_168 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%552 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %554 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %555 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %cst_166 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%554 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %556 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %557 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555, %cst_165 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%556 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %558 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %559 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557, %cst_167 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%558 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %560 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %561 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %559 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%560 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %562 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %563 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %cst_271 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%562 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x1024xf32>
    %564 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_388 = arith.constant 0.000000e+00 : f32
    %565 = linalg.fill ins(%cst_388 : f32) outs(%564 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %566 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%563, %cst_311 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x256xf32>) outs(%565 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %567 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %568 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566, %cst_169 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%567 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %569 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %570 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %cst_173 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%569 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %571 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %572 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570, %cst_171 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%571 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %573 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %574 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %cst_170 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%573 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %575 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %576 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %cst_172 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%575 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %577 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %578 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%577 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %579 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_389 = arith.constant 0.000000e+00 : f32
    %580 = linalg.fill ins(%cst_389 : f32) outs(%579 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %cst_390 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_391 = arith.constant 0.000000e+00 : f32
    %581 = linalg.init_tensor [1, 16, 16, 256] : tensor<1x16x16x256xf32>
    %582 = linalg.fill ins(%cst_391 : f32) outs(%581 : tensor<1x16x16x256xf32>) -> tensor<1x16x16x256xf32>
    %583 = tensor.insert_slice %578 into %582[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x14x14x256xf32> into tensor<1x16x16x256xf32>
    %584 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%583, %cst_312 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%580 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %585 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %586 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %cst_174 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%585 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %587 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %588 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586, %cst_178 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%587 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %589 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %590 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %cst_176 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%589 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %591 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %592 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590, %cst_175 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%591 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %593 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %594 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %cst_177 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%593 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %595 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %596 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%595 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %597 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %cst_392 = arith.constant 0.000000e+00 : f32
    %598 = linalg.fill ins(%cst_392 : f32) outs(%597 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %599 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%596, %cst_313 : tensor<1x14x14x256xf32>, tensor<1x1x256x1024xf32>) outs(%598 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %600 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %601 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599, %cst_179 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%600 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %602 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %603 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %cst_183 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%602 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %604 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %605 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603, %cst_181 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%604 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %606 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %607 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605, %cst_180 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%606 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %608 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %609 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%607, %cst_182 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%608 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %610 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %611 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563, %609 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%610 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %612 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %613 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611, %cst_271 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%612 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x1024xf32>
    %614 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_393 = arith.constant 0.000000e+00 : f32
    %615 = linalg.fill ins(%cst_393 : f32) outs(%614 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %616 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%613, %cst_314 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x256xf32>) outs(%615 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %617 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %618 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616, %cst_184 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%617 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %619 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %620 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %cst_188 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%619 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %621 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %622 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620, %cst_186 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%621 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %623 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %624 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622, %cst_185 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%623 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %625 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %626 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %cst_187 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%625 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %627 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %628 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%627 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %629 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_394 = arith.constant 0.000000e+00 : f32
    %630 = linalg.fill ins(%cst_394 : f32) outs(%629 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %cst_395 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_396 = arith.constant 0.000000e+00 : f32
    %631 = linalg.init_tensor [1, 16, 16, 256] : tensor<1x16x16x256xf32>
    %632 = linalg.fill ins(%cst_396 : f32) outs(%631 : tensor<1x16x16x256xf32>) -> tensor<1x16x16x256xf32>
    %633 = tensor.insert_slice %628 into %632[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x14x14x256xf32> into tensor<1x16x16x256xf32>
    %634 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%633, %cst_315 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%630 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %635 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %636 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634, %cst_189 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%635 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %637 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %638 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %cst_193 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%637 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %639 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %640 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638, %cst_191 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%639 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %641 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %642 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %cst_190 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%641 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %643 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %644 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %cst_192 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%643 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %645 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %646 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%645 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %647 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %cst_397 = arith.constant 0.000000e+00 : f32
    %648 = linalg.fill ins(%cst_397 : f32) outs(%647 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %649 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%646, %cst_316 : tensor<1x14x14x256xf32>, tensor<1x1x256x1024xf32>) outs(%648 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %650 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %651 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %cst_194 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%650 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %652 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %653 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651, %cst_198 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%652 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %654 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %655 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%653, %cst_196 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%654 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %656 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %657 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655, %cst_195 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%656 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %658 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %659 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657, %cst_197 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%658 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %660 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %661 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %659 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%660 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %662 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %663 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661, %cst_271 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%662 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x1024xf32>
    %664 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_398 = arith.constant 0.000000e+00 : f32
    %665 = linalg.fill ins(%cst_398 : f32) outs(%664 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %666 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%663, %cst_317 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x256xf32>) outs(%665 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %667 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %668 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %cst_199 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%667 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %669 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %670 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668, %cst_203 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%669 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %671 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %672 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670, %cst_201 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%671 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %673 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %674 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672, %cst_200 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%673 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %675 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %676 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%674, %cst_202 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%675 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %677 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %678 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%677 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %679 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %cst_399 = arith.constant 0.000000e+00 : f32
    %680 = linalg.fill ins(%cst_399 : f32) outs(%679 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %cst_400 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_401 = arith.constant 0.000000e+00 : f32
    %681 = linalg.init_tensor [1, 16, 16, 256] : tensor<1x16x16x256xf32>
    %682 = linalg.fill ins(%cst_401 : f32) outs(%681 : tensor<1x16x16x256xf32>) -> tensor<1x16x16x256xf32>
    %683 = tensor.insert_slice %678 into %682[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x14x14x256xf32> into tensor<1x16x16x256xf32>
    %684 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%683, %cst_318 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%680 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %685 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %686 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%684, %cst_204 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%685 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %687 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %688 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686, %cst_208 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%687 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %689 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %690 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%688, %cst_206 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%689 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %691 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %692 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%690, %cst_205 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%691 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %693 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %694 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%692, %cst_207 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%693 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x256xf32>
    %695 = linalg.init_tensor [1, 14, 14, 256] : tensor<1x14x14x256xf32>
    %696 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694, %cst_270 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%695 : tensor<1x14x14x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x256xf32>
    %697 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %cst_402 = arith.constant 0.000000e+00 : f32
    %698 = linalg.fill ins(%cst_402 : f32) outs(%697 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %699 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%696, %cst_319 : tensor<1x14x14x256xf32>, tensor<1x1x256x1024xf32>) outs(%698 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %700 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %701 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699, %cst_209 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%700 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %702 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %703 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701, %cst_213 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%702 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %704 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %705 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %cst_211 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%704 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %706 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %707 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705, %cst_210 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%706 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %708 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %709 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707, %cst_212 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%708 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %710 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %711 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663, %709 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%710 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x14x14x1024xf32>
    %712 = linalg.init_tensor [1, 14, 14, 1024] : tensor<1x14x14x1024xf32>
    %713 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711, %cst_271 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%712 : tensor<1x14x14x1024xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x14x14x1024xf32>
    %714 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %cst_403 = arith.constant 0.000000e+00 : f32
    %715 = linalg.fill ins(%cst_403 : f32) outs(%714 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %716 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%713, %cst_320 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x2048xf32>) outs(%715 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %717 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %718 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716, %cst_214 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%717 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %719 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %720 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718, %cst_218 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%719 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %721 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %722 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%720, %cst_216 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%721 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %723 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %724 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722, %cst_215 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%723 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %725 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %726 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724, %cst_217 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%725 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %727 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %cst_404 = arith.constant 0.000000e+00 : f32
    %728 = linalg.fill ins(%cst_404 : f32) outs(%727 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %729 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%713, %cst_321 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x512xf32>) outs(%728 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %730 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %731 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729, %cst_219 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%730 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %732 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %733 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731, %cst_223 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%732 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %734 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %735 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %cst_221 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%734 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %736 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %737 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735, %cst_220 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%736 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %738 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %739 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%737, %cst_222 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%738 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %740 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %741 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739, %cst_272 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%740 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x512xf32>
    %742 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %cst_405 = arith.constant 0.000000e+00 : f32
    %743 = linalg.fill ins(%cst_405 : f32) outs(%742 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %cst_406 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_407 = arith.constant 0.000000e+00 : f32
    %744 = linalg.init_tensor [1, 9, 9, 512] : tensor<1x9x9x512xf32>
    %745 = linalg.fill ins(%cst_407 : f32) outs(%744 : tensor<1x9x9x512xf32>) -> tensor<1x9x9x512xf32>
    %746 = tensor.insert_slice %741 into %745[0, 1, 1, 0] [1, 7, 7, 512] [1, 1, 1, 1] : tensor<1x7x7x512xf32> into tensor<1x9x9x512xf32>
    %747 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%746, %cst_322 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%743 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %748 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %749 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747, %cst_224 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%748 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %750 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %751 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%749, %cst_228 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%750 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %752 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %753 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751, %cst_226 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%752 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %754 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %755 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753, %cst_225 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%754 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %756 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %757 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%755, %cst_227 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%756 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %758 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %759 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%757, %cst_272 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%758 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x512xf32>
    %760 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %cst_408 = arith.constant 0.000000e+00 : f32
    %761 = linalg.fill ins(%cst_408 : f32) outs(%760 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %762 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%759, %cst_323 : tensor<1x7x7x512xf32>, tensor<1x1x512x2048xf32>) outs(%761 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %763 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %764 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762, %cst_229 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%763 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %765 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %766 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%764, %cst_233 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%765 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %767 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %768 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766, %cst_231 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%767 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %769 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %770 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768, %cst_230 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%769 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %771 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %772 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%770, %cst_232 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%771 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %773 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %774 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726, %772 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%773 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %775 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %776 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%774, %cst_273 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%775 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x2048xf32>
    %777 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %cst_409 = arith.constant 0.000000e+00 : f32
    %778 = linalg.fill ins(%cst_409 : f32) outs(%777 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %779 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%776, %cst_324 : tensor<1x7x7x2048xf32>, tensor<1x1x2048x512xf32>) outs(%778 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %780 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %781 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%779, %cst_234 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%780 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %782 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %783 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781, %cst_238 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%782 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %784 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %785 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%783, %cst_236 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%784 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %786 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %787 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%785, %cst_235 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%786 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %788 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %789 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%787, %cst_237 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%788 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %790 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %791 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789, %cst_272 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%790 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x512xf32>
    %792 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %cst_410 = arith.constant 0.000000e+00 : f32
    %793 = linalg.fill ins(%cst_410 : f32) outs(%792 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %cst_411 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_412 = arith.constant 0.000000e+00 : f32
    %794 = linalg.init_tensor [1, 9, 9, 512] : tensor<1x9x9x512xf32>
    %795 = linalg.fill ins(%cst_412 : f32) outs(%794 : tensor<1x9x9x512xf32>) -> tensor<1x9x9x512xf32>
    %796 = tensor.insert_slice %791 into %795[0, 1, 1, 0] [1, 7, 7, 512] [1, 1, 1, 1] : tensor<1x7x7x512xf32> into tensor<1x9x9x512xf32>
    %797 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%796, %cst_325 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%793 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %798 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %799 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797, %cst_239 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%798 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %800 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %801 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %cst_243 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%800 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %802 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %803 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%801, %cst_241 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%802 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %804 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %805 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%803, %cst_240 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%804 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %806 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %807 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%805, %cst_242 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%806 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %808 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %809 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%807, %cst_272 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%808 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x512xf32>
    %810 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %cst_413 = arith.constant 0.000000e+00 : f32
    %811 = linalg.fill ins(%cst_413 : f32) outs(%810 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %812 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%809, %cst_326 : tensor<1x7x7x512xf32>, tensor<1x1x512x2048xf32>) outs(%811 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %813 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %814 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%812, %cst_244 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%813 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %815 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %816 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%814, %cst_248 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%815 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %817 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %818 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816, %cst_246 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%817 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %819 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %820 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%818, %cst_245 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%819 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %821 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %822 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820, %cst_247 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%821 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %823 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %824 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776, %822 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%823 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %825 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %826 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%824, %cst_273 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%825 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x2048xf32>
    %827 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %cst_414 = arith.constant 0.000000e+00 : f32
    %828 = linalg.fill ins(%cst_414 : f32) outs(%827 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %829 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%826, %cst_327 : tensor<1x7x7x2048xf32>, tensor<1x1x2048x512xf32>) outs(%828 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %830 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %831 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829, %cst_249 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%830 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %832 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %833 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%831, %cst_253 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%832 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %834 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %835 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%833, %cst_251 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%834 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %836 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %837 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%835, %cst_250 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%836 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %838 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %839 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%837, %cst_252 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%838 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %840 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %841 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%839, %cst_272 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%840 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x512xf32>
    %842 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %cst_415 = arith.constant 0.000000e+00 : f32
    %843 = linalg.fill ins(%cst_415 : f32) outs(%842 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %cst_416 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_417 = arith.constant 0.000000e+00 : f32
    %844 = linalg.init_tensor [1, 9, 9, 512] : tensor<1x9x9x512xf32>
    %845 = linalg.fill ins(%cst_417 : f32) outs(%844 : tensor<1x9x9x512xf32>) -> tensor<1x9x9x512xf32>
    %846 = tensor.insert_slice %841 into %845[0, 1, 1, 0] [1, 7, 7, 512] [1, 1, 1, 1] : tensor<1x7x7x512xf32> into tensor<1x9x9x512xf32>
    %847 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%846, %cst_328 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%843 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %848 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %849 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847, %cst_254 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%848 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %850 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %851 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849, %cst_258 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%850 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %852 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %853 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%851, %cst_256 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%852 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %854 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %855 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853, %cst_255 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%854 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %856 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %857 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%855, %cst_257 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%856 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x512xf32>
    %858 = linalg.init_tensor [1, 7, 7, 512] : tensor<1x7x7x512xf32>
    %859 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%857, %cst_272 : tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%858 : tensor<1x7x7x512xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x512xf32>
    %860 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %cst_418 = arith.constant 0.000000e+00 : f32
    %861 = linalg.fill ins(%cst_418 : f32) outs(%860 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %862 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%859, %cst_329 : tensor<1x7x7x512xf32>, tensor<1x1x512x2048xf32>) outs(%861 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %863 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %864 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%862, %cst_259 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%863 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %865 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %866 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%864, %cst_263 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%865 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %867 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %868 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%866, %cst_261 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%867 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %869 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %870 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%868, %cst_260 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%869 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %871 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %872 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%870, %cst_262 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%871 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %873 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %874 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%826, %872 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%873 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x7x7x2048xf32>
    %875 = linalg.init_tensor [1, 7, 7, 2048] : tensor<1x7x7x2048xf32>
    %876 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874, %cst_273 : tensor<1x7x7x2048xf32>, tensor<1x7x7x2048xf32>) outs(%875 : tensor<1x7x7x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1x7x7x2048xf32>
    %cst_419 = arith.constant 0.000000e+00 : f32
    %877 = linalg.init_tensor [1, 2048] : tensor<1x2048xf32>
    %878 = linalg.fill ins(%cst_419 : f32) outs(%877 : tensor<1x2048xf32>) -> tensor<1x2048xf32>
    %879 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction", "reduction"]} ins(%876 : tensor<1x7x7x2048xf32>) outs(%878 : tensor<1x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x2048xf32>
    %880 = linalg.init_tensor [1, 2048] : tensor<1x2048xf32>
    %881 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel", "parallel"]} ins(%879, %cst_274 : tensor<1x2048xf32>, tensor<1x2048xf32>) outs(%880 : tensor<1x2048xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x2048xf32>
    %882 = linalg.init_tensor [1, 1000] : tensor<1x1000xf32>
    %cst_420 = arith.constant 0.000000e+00 : f32
    %883 = linalg.fill ins(%cst_420 : f32) outs(%882 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %884 = linalg.matmul ins(%881, %cst_330 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%883 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %885 = linalg.init_tensor [1, 1000] : tensor<1x1000xf32>
    %886 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel", "parallel"]} ins(%884, %cst_264 : tensor<1x1000xf32>, tensor<1x1000xf32>) outs(%885 : tensor<1x1000xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x1000xf32>
    %cst_421 = arith.constant 0xFF800000 : f32
    %887 = linalg.init_tensor [1] : tensor<1xf32>
    %888 = linalg.fill ins(%cst_421 : f32) outs(%887 : tensor<1xf32>) -> tensor<1xf32>
    %889 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "reduction"]} ins(%886 : tensor<1x1000xf32>) outs(%888 : tensor<1xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %903 = arith.cmpf ugt, %arg1, %arg2 : f32
      %904 = arith.select %903, %arg1, %arg2 : f32
      %905 = arith.cmpf uno, %arg2, %arg2 : f32
      %906 = arith.select %905, %arg2, %904 : f32
      linalg.yield %906 : f32
    } -> tensor<1xf32>
    %890 = linalg.init_tensor [1, 1000] : tensor<1x1000xf32>
    %891 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%889 : tensor<1xf32>) outs(%890 : tensor<1x1000xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<1x1000xf32>
    %892 = linalg.init_tensor [1, 1000] : tensor<1x1000xf32>
    %893 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel", "parallel"]} ins(%886, %891 : tensor<1x1000xf32>, tensor<1x1000xf32>) outs(%892 : tensor<1x1000xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.subf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x1000xf32>
    %894 = linalg.init_tensor [1, 1000] : tensor<1x1000xf32>
    %895 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel", "parallel"]} ins(%893 : tensor<1x1000xf32>) outs(%894 : tensor<1x1000xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %903 = math.exp %arg1 : f32
      linalg.yield %903 : f32
    } -> tensor<1x1000xf32>
    %cst_422 = arith.constant 0.000000e+00 : f32
    %896 = linalg.init_tensor [1] : tensor<1xf32>
    %897 = linalg.fill ins(%cst_422 : f32) outs(%896 : tensor<1xf32>) -> tensor<1xf32>
    %898 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "reduction"]} ins(%895 : tensor<1x1000xf32>) outs(%897 : tensor<1xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %903 = arith.addf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1xf32>
    %899 = linalg.init_tensor [1, 1000] : tensor<1x1000xf32>
    %900 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%898 : tensor<1xf32>) outs(%899 : tensor<1x1000xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<1x1000xf32>
    %901 = linalg.init_tensor [1, 1000] : tensor<1x1000xf32>
    %902 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel", "parallel"]} ins(%895, %900 : tensor<1x1000xf32>, tensor<1x1000xf32>) outs(%901 : tensor<1x1000xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %903 = arith.divf %arg1, %arg2 : f32
      linalg.yield %903 : f32
    } -> tensor<1x1000xf32>
    return %902 : tensor<1x1000xf32>
  }
}

