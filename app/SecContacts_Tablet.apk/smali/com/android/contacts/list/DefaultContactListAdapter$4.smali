.class Lcom/android/contacts/list/DefaultContactListAdapter$4;
.super Ljava/lang/Object;
.source "DefaultContactListAdapter.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactListAdapter;->createMenuWidgetFromPhotoView(Landroid/view/View;Landroid/net/Uri;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

.field final synthetic val$baseUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$4;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactListAdapter$4;->val$baseUri:Landroid/net/Uri;

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
    .line 1006
    packed-switch p2, :pswitch_data_0

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1008
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$4;->val$baseUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1009
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter$4;->val$baseUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1010
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$4;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$900(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
