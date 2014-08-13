.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 1655
    packed-switch p2, :pswitch_data_0

    .line 1677
    :goto_0
    return-void

    .line 1659
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1660
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1661
    const-string v1, "from_speed_dial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1662
    const-string v1, "has_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1663
    const-string v1, "index"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1664
    const-string v1, "actionbar_title"

    const-string v2, "Speed dial setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1670
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v3

    # invokes: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->deleteSlot(Landroid/view/View;I)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/view/View;I)V

    goto :goto_0

    .line 1655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
