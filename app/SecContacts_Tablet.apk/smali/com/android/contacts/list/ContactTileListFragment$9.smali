.class Lcom/android/contacts/list/ContactTileListFragment$9;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment;->createLauncherShortcutWithContact(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;

.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$9;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iput-object p2, p0, Lcom/android/contacts/list/ContactTileListFragment$9;->val$parentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 1747
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1748
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$9;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1749
    return-void
.end method
