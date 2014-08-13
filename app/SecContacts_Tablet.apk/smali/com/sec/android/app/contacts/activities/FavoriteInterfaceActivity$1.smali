.class Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;
.super Ljava/lang/Object;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

.field final synthetic val$clipEx:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->val$clipEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->val$clipEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 296
    return-void
.end method
