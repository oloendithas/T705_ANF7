.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3$1;
.super Ljava/lang/Object;
.source "NamecardGridViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3$1;->this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3$1;->this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;

    iget-object v0, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->reloadData()V

    .line 730
    return-void
.end method
