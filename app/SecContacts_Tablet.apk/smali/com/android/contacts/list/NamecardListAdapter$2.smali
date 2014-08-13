.class Lcom/android/contacts/list/NamecardListAdapter$2;
.super Ljava/lang/Object;
.source "NamecardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/NamecardListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/NamecardListAdapter;

.field final synthetic val$item:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListAdapter$2;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    iput-object p2, p0, Lcom/android/contacts/list/NamecardListAdapter$2;->val$item:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 289
    sget-object v0, Lcom/android/contacts/list/NamecardListAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/contacts/list/NamecardListAdapter$2;->val$item:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 290
    const/4 v0, 0x1

    return v0
.end method
