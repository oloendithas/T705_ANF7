.class Lcom/android/contacts/list/ContactTileView$4;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileView;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    .line 248
    .local v1, "contactUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactTileView;->getPhoneNumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "callNumberStr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    .line 250
    const/4 v2, 0x1

    return v2
.end method
