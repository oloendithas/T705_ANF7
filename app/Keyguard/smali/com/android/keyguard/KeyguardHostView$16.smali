.class Lcom/android/keyguard/KeyguardHostView$16;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->addFMMWidgets()V
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
    .line 2378
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$16;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$16;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardHostView;->access$3500(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2383
    .local v0, "phoneIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2385
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2386
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$16;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$3600(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2387
    return-void
.end method
