; ModuleID = 'add.bc'
source_filename = "add.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline norecurse nounwind readnone sspstrong uwtable
define i32 @or(i32, i32) local_unnamed_addr #0 {
  %vec = shufflevector <2 x i32> <i32 0, i32 1>, <2 x i32> <i32 2, i32 3>, <2 x i32> <i32 0, i32 3>
  %zero = extractelement <2 x i32> %vec, i32 0
  %three = extractelement <2 x i32> %vec, i32 1
  %dep = add i32 %zero, %three

  %vec1 = shufflevector <2 x i32> <i32 100, i32 undef>, <2 x i32> <i32 2, i32 3>, <2 x i32> <i32 undef, i32 0>
  %onehundred = extractelement <2 x i32> %vec1, i32 1
  %dep1 = add i32 %onehundred, %onehundred
  
  ret i32 0
}


attributes #0 = { noinline norecurse nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
