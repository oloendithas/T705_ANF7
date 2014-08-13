.class Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$21;->onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

.field final synthetic val$action:Lcom/android/contacts/quickcontact/Action;

.field final synthetic val$alternate:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$21;ZLcom/android/contacts/quickcontact/Action;)V
    .locals 0

    .prologue
    .line 2775
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

    iput-boolean p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->val$alternate:Z

    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2779
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

    iget-object v2, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->val$alternate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2786
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

    iget-object v1, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V
    invoke-static {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V

    .line 2787
    return-void

    .line 2779
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2780
    :catch_0
    move-exception v0

    .line 2781
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2782
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2783
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "QuickContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
