.class Lcom/android/contacts/activities/DialtactsActivity$2;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 837
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 840
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {v3, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 841
    .local v3, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 842
    .local v2, "menu":Landroid/view/Menu;
    const v4, 0x7f12000e

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 843
    const v4, 0x7f090506

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 844
    .local v1, "filterOptionMenuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 845
    const v4, 0x7f090507

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 846
    .local v0, "addContactOptionMenuItem":Landroid/view/MenuItem;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 848
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 849
    return-void
.end method