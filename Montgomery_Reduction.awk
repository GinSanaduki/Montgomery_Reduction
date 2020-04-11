#!/usr/bin/gawk -f
# Montgomery_Reduction.awk
# /usr/bin/gawk -M -f Montgomery_Reduction.awk -v a=$a -v b=$b
# https://qiita.com/NaokiOsako/items/2404a7217347363c482d
# RSA 暗号の高速化: モンゴメリリダクション - Qiita

BEGIN{
	N = 169;
	# N*N'≡-1
	NINV = 103;
	# 剰余算を削除するために2の冪乗にする
	# 指数部分 2^n
	RIND = 8;
	R = 2 ** RIND;
	R2 = (R ** 2) % N;
	ans = MMM(a, b);
	ans_b = (a * b) % N;
	if(ans == ans_b){
		print "Ans : "ans;
		print "Result : OK." > "/dev/stderr";
		exit;
	} else {
		print "Ans : "ans;
		print "Ans : "ans_b;
		print "Result : NG." > "/dev/stderr";
		exit 1;
	}
}

# Montgomery Modular Multiplication
function MMM(MMM_a, MMM_b, MMM_A, MMM_B, MMM_A_B, MMM_A_B_02){
	MMM_A = MR(MMM_a * R2);
	MMM_B = MR(MMM_b * R2);
	MMM_A_B = MMM_A * MMM_B;
	MMM_A_B_02 = MR(MMM_A_B);
	return MR(MMM_A_B_02);
}

# Montgomery Reduction
function MR(MR_x, MR_01, MR_02, MR_03, MR_04){
	MR_01 = MR_x * NINV;
	MR_02 = R - 1;
	MR_03 = and(MR_01, MR_02);
	MR_04 = MR_03 * N + MR_x;
	return rshift(MR_04, RIND);
}

