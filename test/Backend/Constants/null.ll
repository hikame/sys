; ModuleID = 'free.bc'
source_filename = "free.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.apoint = type { i32, i32 * }


; Function Attrs: noinline norecurse nounwind sspstrong uwtable
define i32 @simple(i32 nocapture) local_unnamed_addr #0 {
  %2 = ptrtoint i32 * null to i32
  %3 = ptrtoint %struct.apoint * null to i32
  %4 = add i32 %2, %3
  %5 = ptrtoint <2 x i32 *> <i32 * null, i32 * null> to <2 x i32>
  %6 = extractelement <2 x i32> %5, i32 0
  %7 = extractvalue %struct.apoint { i32 0, i32 * null }, 1
  %8 = ptrtoint i32 * %7 to i32
  %9 = add i32 %6, %8
  %10 = extractvalue { i32, i64 * } { i32 0, i64 * null }, 1
  %11 = ptrtoint i64 * %10 to i64
  %12 = ptrtoint <2 x i32 *> * null to i64
  %13 = add i64 %11, %12
  ret i32 0
}

attributes #0 = { noinline norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"apoint", !6, i64 0, !6, i64 4}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 4}
