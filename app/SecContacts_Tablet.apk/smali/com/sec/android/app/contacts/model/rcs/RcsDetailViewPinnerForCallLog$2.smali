.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;
.super Ljava/lang/Object;
.source "RcsDetailViewPinnerForCallLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->extractUIComponets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 318
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
