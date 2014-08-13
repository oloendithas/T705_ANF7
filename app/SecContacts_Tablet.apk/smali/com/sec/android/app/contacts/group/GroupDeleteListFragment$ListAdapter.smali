.class final Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "GroupDeleteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .line 274
    const v0, 0x7f04003a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 275
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const v3, 0x7f09011e

    const/4 v2, 0x1

    .line 279
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "title":Ljava/lang/String;
    const v1, 0x7f09002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$400(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
