.class Lcom/android/contacts/activities/NamecardListActivity$2;
.super Ljava/lang/Object;
.source "NamecardListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/NamecardListActivity;->setCustomActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/NamecardListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/NamecardListActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/contacts/activities/NamecardListActivity$2;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity$2;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 219
    return-void
.end method
