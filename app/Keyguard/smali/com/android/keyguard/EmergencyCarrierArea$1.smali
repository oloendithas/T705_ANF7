.class Lcom/android/keyguard/EmergencyCarrierArea$1;
.super Ljava/lang/Object;
.source "EmergencyCarrierArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyCarrierArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyCarrierArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyCarrierArea;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 85
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0

    .line 69
    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    # getter for: Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    # getter for: Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 71
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_a

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    # getter for: Lcom/android/keyguard/EmergencyCarrierArea;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;
    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$100(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/MSimCarrierText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_a

    .line 77
    :pswitch_33
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    # getter for: Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    # getter for: Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 79
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_a

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    # getter for: Lcom/android/keyguard/EmergencyCarrierArea;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;
    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$100(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/MSimCarrierText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_a

    .line 67
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_33
    .end packed-switch
.end method
