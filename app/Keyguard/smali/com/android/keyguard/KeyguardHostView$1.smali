.class Lcom/android/keyguard/KeyguardHostView$1;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 384
    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneStateListener(), mGuidetext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "1599-0011"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 387
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    if-nez v1, :cond_60

    .line 388
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f06011c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 393
    :cond_5f
    :goto_5f
    return-void

    .line 390
    :cond_60
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f
.end method
