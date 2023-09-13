/* Generated by Amaranth Yosys 0.25 (PyPI ver 0.25.0.0.post77, git sha1 e02b7f64b) */

module amaranth_core(audio_clk, audio_dac, audio_sync, clk, cont1_joy, cont1_key, cont1_trig, cont2_joy, cont2_key, cont2_trig, cont3_joy, cont3_key, cont3_trig, cont4_joy, cont4_key, cont4_trig, dbg_rx, dbg_tx, init_done, rst, user1
, user2, video_de, video_hs, video_rgb, video_rgb_clk, video_rgb_clk90, video_skip, video_vs, audio_adc);
  reg \$auto$verilog_backend.cc:2083:dump_module$1  = 0;
  wire [10:0] \$11 ;
  wire [10:0] \$12 ;
  wire \$14 ;
  wire \$16 ;
  wire [10:0] \$18 ;
  wire [10:0] \$19 ;
  wire \$21 ;
  wire \$23 ;
  wire \$25 ;
  wire \$27 ;
  wire \$29 ;
  wire \$3 ;
  wire \$31 ;
  wire \$33 ;
  wire \$35 ;
  wire \$37 ;
  wire \$39 ;
  wire \$41 ;
  wire \$43 ;
  wire \$45 ;
  wire \$5 ;
  wire \$7 ;
  wire \$9 ;
  input audio_adc;
  wire audio_adc;
  input audio_clk;
  wire audio_clk;
  input audio_dac;
  wire audio_dac;
  input audio_sync;
  wire audio_sync;
  wire boot_clk;
  input clk;
  wire clk;
  wire \clk$1 ;
  input [31:0] cont1_joy;
  wire [31:0] cont1_joy;
  input [31:0] cont1_key;
  wire [31:0] cont1_key;
  input [15:0] cont1_trig;
  wire [15:0] cont1_trig;
  input [31:0] cont2_joy;
  wire [31:0] cont2_joy;
  input [31:0] cont2_key;
  wire [31:0] cont2_key;
  input [15:0] cont2_trig;
  wire [15:0] cont2_trig;
  input [31:0] cont3_joy;
  wire [31:0] cont3_joy;
  input [31:0] cont3_key;
  wire [31:0] cont3_key;
  input [15:0] cont3_trig;
  wire [15:0] cont3_trig;
  input [31:0] cont4_joy;
  wire [31:0] cont4_joy;
  input [31:0] cont4_key;
  wire [31:0] cont4_key;
  input [15:0] cont4_trig;
  wire [15:0] cont4_trig;
  input dbg_rx;
  wire dbg_rx;
  input dbg_tx;
  wire dbg_tx;
  output init_done;
  reg init_done = 1'h0;
  wire \init_done$next ;
  input rst;
  wire rst;
  wire \rst$2 ;
  input user1;
  wire user1;
  input user2;
  wire user2;
  wire video_clk_div_clk;
  wire video_clk_div_clk90;
  wire video_clk_div_stb;
  output video_de;
  reg video_de = 1'h0;
  reg \video_de$next ;
  output video_hs;
  reg video_hs = 1'h0;
  reg \video_hs$next ;
  output [23:0] video_rgb;
  reg [23:0] video_rgb = 24'h000000;
  reg [23:0] \video_rgb$next ;
  output video_rgb_clk;
  wire video_rgb_clk;
  output video_rgb_clk90;
  wire video_rgb_clk90;
  input video_skip;
  wire video_skip;
  output video_vs;
  reg video_vs = 1'h0;
  reg \video_vs$next ;
  reg [9:0] x_count = 10'h000;
  reg [9:0] \x_count$next ;
  reg [9:0] y_count = 10'h000;
  reg [9:0] \y_count$next ;
  assign \$9  = x_count == 2'h3;
  assign \$12  = x_count + 1'h1;
  assign \$14  = x_count == 10'h270;
  assign \$16  = x_count == 10'h270;
  assign \$19  = y_count + 1'h1;
  assign \$21  = y_count == 9'h1ee;
  assign \$23  = x_count >= 4'ha;
  assign \$25  = x_count < 10'h262;
  assign \$27  = \$23  & \$25 ;
  assign \$29  = y_count >= 4'ha;
  assign \$31  = y_count < 9'h1ea;
  assign \$33  = \$29  & \$31 ;
  assign \$35  = x_count >= 4'ha;
  assign \$37  = x_count < 10'h262;
  assign \$3  = ! x_count;
  assign \$39  = \$35  & \$37 ;
  assign \$41  = y_count >= 4'ha;
  assign \$43  = y_count < 9'h1ea;
  assign \$45  = \$41  & \$43 ;
  always @(posedge boot_clk)
    init_done <= 1'h1;
  always @(posedge \clk$1 , posedge \rst$2 )
    if (\rst$2 ) video_vs <= 1'h0;
    else video_vs <= \video_vs$next ;
  always @(posedge \clk$1 , posedge \rst$2 )
    if (\rst$2 ) video_hs <= 1'h0;
    else video_hs <= \video_hs$next ;
  always @(posedge \clk$1 , posedge \rst$2 )
    if (\rst$2 ) x_count <= 10'h000;
    else x_count <= \x_count$next ;
  always @(posedge \clk$1 , posedge \rst$2 )
    if (\rst$2 ) y_count <= 10'h000;
    else y_count <= \y_count$next ;
  always @(posedge \clk$1 , posedge \rst$2 )
    if (\rst$2 ) video_de <= 1'h0;
    else video_de <= \video_de$next ;
  always @(posedge \clk$1 , posedge \rst$2 )
    if (\rst$2 ) video_rgb <= 24'h000000;
    else video_rgb <= \video_rgb$next ;
  assign \$5  = ! y_count;
  assign \$7  = \$3  & \$5 ;
  \amaranth_core.video_clk_div  video_clk_div (
    .clk(\clk$1 ),
    .\clk$1 (video_clk_div_clk),
    .clk90(video_clk_div_clk90),
    .rst(\rst$2 ),
    .stb(video_clk_div_stb)
  );
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \video_de$next  = video_de;
    casez (video_clk_div_stb)
      1'h1:
        begin
          \video_de$next  = 1'h0;
          casez (\$27 )
            1'h1:
                casez (\$33 )
                  1'h1:
                      \video_de$next  = 1'h1;
                endcase
          endcase
        end
    endcase
    casez (\rst$2 )
      1'h1:
          \video_de$next  = 1'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \video_rgb$next  = video_rgb;
    casez (video_clk_div_stb)
      1'h1:
        begin
          \video_rgb$next  = 24'h000000;
          casez (\$39 )
            1'h1:
                casez (\$45 )
                  1'h1:
                    begin
                      \video_rgb$next [23:16] = 8'ha0;
                      \video_rgb$next [15:8] = 8'h00;
                      \video_rgb$next [7:0] = 8'h80;
                    end
                endcase
          endcase
        end
    endcase
    casez (\rst$2 )
      1'h1:
          \video_rgb$next  = 24'h000000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \video_vs$next  = video_vs;
    casez (video_clk_div_stb)
      1'h1:
          \video_vs$next  = \$7 ;
    endcase
    casez (\rst$2 )
      1'h1:
          \video_vs$next  = 1'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \video_hs$next  = video_hs;
    casez (video_clk_div_stb)
      1'h1:
          \video_hs$next  = \$9 ;
    endcase
    casez (\rst$2 )
      1'h1:
          \video_hs$next  = 1'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \x_count$next  = x_count;
    casez (video_clk_div_stb)
      1'h1:
        begin
          \x_count$next  = \$12 [9:0];
          casez (\$14 )
            1'h1:
                \x_count$next  = 10'h000;
          endcase
        end
    endcase
    casez (\rst$2 )
      1'h1:
          \x_count$next  = 10'h000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \y_count$next  = y_count;
    casez (video_clk_div_stb)
      1'h1:
          casez (\$16 )
            1'h1:
              begin
                \y_count$next  = \$19 [9:0];
                casez (\$21 )
                  1'h1:
                      \y_count$next  = 10'h000;
                endcase
              end
          endcase
    endcase
    casez (\rst$2 )
      1'h1:
          \y_count$next  = 10'h000;
    endcase
  end
  assign \$11  = \$12 ;
  assign \$18  = \$19 ;
  assign video_rgb_clk90 = video_clk_div_clk90;
  assign video_rgb_clk = video_clk_div_clk;
  assign \init_done$next  = 1'h1;
  assign \rst$2  = rst;
  assign \clk$1  = clk;
  assign boot_clk = clk;
endmodule

module \amaranth_core.video_clk_div (rst, \clk$1 , clk90, stb, clk);
  reg \$auto$verilog_backend.cc:2083:dump_module$2  = 0;
  input clk;
  wire clk;
  output \clk$1 ;
  wire \clk$1 ;
  output clk90;
  wire clk90;
  reg [3:0] clk_reg = 4'hc;
  reg [3:0] \clk_reg$next ;
  input rst;
  wire rst;
  output stb;
  wire stb;
  reg [3:0] stb_reg = 4'h1;
  reg [3:0] \stb_reg$next ;
  always @(posedge clk, posedge rst)
    if (rst) clk_reg <= 4'hc;
    else clk_reg <= \clk_reg$next ;
  always @(posedge clk, posedge rst)
    if (rst) stb_reg <= 4'h1;
    else stb_reg <= \stb_reg$next ;
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$2 ) begin end
    \clk_reg$next  = { clk_reg[2:0], clk_reg[3] };
    casez (rst)
      1'h1:
          \clk_reg$next  = 4'hc;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$2 ) begin end
    \stb_reg$next  = { stb_reg[2:0], stb_reg[3] };
    casez (rst)
      1'h1:
          \stb_reg$next  = 4'h1;
    endcase
  end
  assign stb = stb_reg[0];
  assign clk90 = clk_reg[1];
  assign \clk$1  = clk_reg[0];
endmodule
