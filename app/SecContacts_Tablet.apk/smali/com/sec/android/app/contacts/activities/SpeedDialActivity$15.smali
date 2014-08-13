.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$15;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->createRecipientListWidgetFromView(Landroid/view/View;I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

.field final synthetic val$mPosition:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;I)V
    .locals 0

    .prologue
    .line 3156
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$15;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iput p2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$15;->val$mPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 3160
    move-object v0, p3

    check-cast v0, Landroid/os/Bundle;

    .line 3161
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3162
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$15;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$15;->val$mPosition:I

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->addSpeedDial(Landroid/os/Bundle;I)V

    .line 3164
    :cond_0
    return-void
.end method
