.class Lcom/android/contacts/list/ContactTileStarredView$1;
.super Ljava/lang/Object;
.source "ContactTileStarredView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileStarredView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileStarredView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileStarredView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileStarredView$1;->this$0:Lcom/android/contacts/list/ContactTileStarredView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileStarredView$1;->this$0:Lcom/android/contacts/list/ContactTileStarredView;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    .line 51
    .local v0, "contactUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 52
    # getter for: Lcom/android/contacts/list/ContactTileStarredView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/ContactTileStarredView;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Contact URI is null.. Call cannot be established"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileStarredView$1;->this$0:Lcom/android/contacts/list/ContactTileStarredView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 56
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/contacts/list/ContactTileListFragment;->callPressed:Z

    goto :goto_0
.end method
