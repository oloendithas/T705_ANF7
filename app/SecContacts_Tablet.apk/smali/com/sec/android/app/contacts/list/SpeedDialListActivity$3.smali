.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

.field final synthetic val$contactUriData:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;->val$contactUriData:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1097
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, "intentQuick":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;->val$contactUriData:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1099
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1102
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$3;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1103
    return-void
.end method
