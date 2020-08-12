; ModuleID = 'free.bc'
source_filename = "free.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%ty = type <2 x i32> 

@shuff = local_unnamed_addr constant %ty shufflevector (%ty <i32 100, i32 200>, %ty <i32 300, i32 400>, %ty <i32 3, i32 2>)

; Function Attrs: noinline norecurse nounwind readonly sspstrong uwtable
define i32 @simple(i32 nocapture readonly) local_unnamed_addr #0 {
  %vec = load %ty, %ty * @shuff
  %fourhundred = extractelement %ty %vec, i32 0
  %threehundred = extractelement %ty %vec, i32 1
  %dep = add i32 %fourhundred, %threehundred   	    
  ret i32 4
}

attributes #0 = { noinline norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
