.class Lcom/android/contacts/activities/DialtactsActivity$9;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$9;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeInActionBarSelected()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$9;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$2700(Lcom/android/contacts/activities/DialtactsActivity;)V

    .line 994
    return-void
.end method

.method public onPickPhoneNumberAction(Landroid/net/Uri;)V
    .locals 2
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$9;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$9;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 988
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported intent has come ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method
