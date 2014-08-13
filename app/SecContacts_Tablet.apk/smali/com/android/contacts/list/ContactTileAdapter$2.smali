.class Lcom/android/contacts/list/ContactTileAdapter$2;
.super Ljava/lang/Object;
.source "ContactTileAdapter.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileAdapter;->createMenuWidgetFromView(Lcom/android/contacts/list/ContactTileView;Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileAdapter;

.field final synthetic val$airButtonAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field final synthetic val$contactUri:Landroid/net/Uri;

.field final synthetic val$isStarred:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Z)V
    .locals 0

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iput-object p2, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->val$contactUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->val$airButtonAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iput-boolean p4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->val$isStarred:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 1441
    if-gez p2, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->val$contactUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1445
    .local v2, "phoneNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->val$contactUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->getEmailAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "emailAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->val$airButtonAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v4, p2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 1447
    .local v0, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # invokes: Lcom/android/contacts/list/ContactTileAdapter;->getDescriptionResourceId(Ljava/lang/String;)I
    invoke-static {v4, v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$2100(Lcom/android/contacts/list/ContactTileAdapter;Ljava/lang/String;)I

    move-result v3

    .line 1448
    .local v3, "resId":I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1451
    :sswitch_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->val$contactUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->val$isStarred:Z

    # invokes: Lcom/android/contacts/list/ContactTileAdapter;->setFavorites(Landroid/net/Uri;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$2200(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1454
    :sswitch_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mIsPhone:Z
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileAdapter;->access$1300(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 1455
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # invokes: Lcom/android/contacts/list/ContactTileAdapter;->actionCall(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/contacts/list/ContactTileAdapter;->access$2300(Lcom/android/contacts/list/ContactTileAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    :sswitch_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mIsSMSAvailable:Z
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileAdapter;->access$2400(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 1460
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # invokes: Lcom/android/contacts/list/ContactTileAdapter;->sendMessage(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/contacts/list/ContactTileAdapter;->access$2500(Lcom/android/contacts/list/ContactTileAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 1464
    :sswitch_3
    if-eqz v1, :cond_0

    .line 1465
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$2;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # invokes: Lcom/android/contacts/list/ContactTileAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$2600(Lcom/android/contacts/list/ContactTileAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 1448
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0039 -> :sswitch_0
        0x7f0e003c -> :sswitch_0
        0x7f0e0232 -> :sswitch_3
        0x7f0e0233 -> :sswitch_2
        0x7f0e031f -> :sswitch_1
    .end sparse-switch
.end method
