.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

.field final synthetic val$detailNumber:Ljava/lang/String;

.field final synthetic val$firstLine:Ljava/lang/String;

.field final synthetic val$secondLine:Ljava/lang/String;

.field final synthetic val$thirdLine:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2360
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->val$detailNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->val$firstLine:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->val$secondLine:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->val$thirdLine:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2362
    const/4 v0, 0x0

    .line 2363
    .local v0, "duration_intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "duration_intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2364
    .restart local v0    # "duration_intent":Landroid/content/Intent;
    const-string v1, "number"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->val$detailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2365
    const-string v1, "firstLine"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->val$firstLine:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2366
    const-string v1, "secondLine"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->val$secondLine:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2367
    const-string v1, "thirdLine"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->val$thirdLine:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2368
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2369
    return-void
.end method
