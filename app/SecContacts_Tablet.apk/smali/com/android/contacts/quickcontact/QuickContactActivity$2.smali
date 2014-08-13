.class Lcom/android/contacts/quickcontact/QuickContactActivity$2;
.super Landroid/database/ContentObserver;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 395
    const-string v0, "QuickContact"

    const-string v1, "mRcsServiceObserver, onChange"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 398
    const-string v0, "QuickContact"

    const-string v1, "mRcsServiceObserver, mLookupUri is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v0, "QuickContact"

    const-string v1, "mRcsServiceObserver, reaction on notification - "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->rcsShow()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    goto :goto_0
.end method
