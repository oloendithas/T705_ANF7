.class Lcom/android/contacts/activities/ContactEditorActivity$4$1;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity$4;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

.field final synthetic val$menuButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity$4;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const v14, 0x7f090175

    const v13, 0x7f090178

    const/4 v12, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    .line 1086
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 1088
    .local v6, "popupRadius":I
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    if-eqz v8, :cond_3

    :cond_0
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->isResumed()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1091
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1092
    .local v4, "mainView":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1093
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1094
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1095
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1096
    .local v0, "actionBarWidth":I
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_2

    .line 1098
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    new-array v9, v10, [I

    # setter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8, v9}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1102(Lcom/android/contacts/activities/ContactEditorActivity;[I)[I

    .line 1099
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v0, v9

    sub-int/2addr v9, v6

    aput v9, v8, v12

    .line 1102
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v6

    aput v9, v8, v11

    .line 1104
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/ContactEditorFragment;

    .line 1106
    .local v3, "editFragment":Lcom/android/contacts/editor/ContactEditorFragment;
    if-eqz v3, :cond_1

    .line 1107
    invoke-virtual {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->startAddaContactTutorial()V

    .line 1162
    .end local v0    # "actionBarWidth":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "editFragment":Lcom/android/contacts/editor/ContactEditorFragment;
    .end local v4    # "mainView":Landroid/widget/LinearLayout;
    .end local v7    # "wm":Landroid/view/WindowManager;
    :cond_1
    :goto_0
    return-void

    .line 1110
    .restart local v0    # "actionBarWidth":I
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "mainView":Landroid/widget/LinearLayout;
    .restart local v7    # "wm":Landroid/view/WindowManager;
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v10, :cond_1

    .line 1112
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    new-array v9, v10, [I

    # setter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8, v9}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1002(Lcom/android/contacts/activities/ContactEditorActivity;[I)[I

    .line 1113
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v0, v9

    sub-int/2addr v9, v6

    aput v9, v8, v12

    .line 1117
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v6

    aput v9, v8, v11

    .line 1119
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/ContactEditorFragment;

    .line 1121
    .restart local v3    # "editFragment":Lcom/android/contacts/editor/ContactEditorFragment;
    if-eqz v3, :cond_1

    .line 1122
    invoke-virtual {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->startAddaContactTutorial()V

    goto :goto_0

    .line 1127
    .end local v0    # "actionBarWidth":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "editFragment":Lcom/android/contacts/editor/ContactEditorFragment;
    .end local v4    # "mainView":Landroid/widget/LinearLayout;
    .end local v7    # "wm":Landroid/view/WindowManager;
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    if-nez v8, :cond_1

    .line 1129
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1130
    .restart local v4    # "mainView":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1131
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1132
    .restart local v7    # "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1133
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 1134
    .local v1, "actionBarheight":I
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v8, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v5, v8, v9

    .line 1137
    .local v5, "notiBarHeight":I
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_5

    .line 1139
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    new-array v9, v10, [I

    # setter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8, v9}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1102(Lcom/android/contacts/activities/ContactEditorActivity;[I)[I

    .line 1140
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v9, v9, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v9}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1142
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    aget v9, v8, v12

    iget-object v10, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v6

    add-int/2addr v9, v10

    aput v9, v8, v12

    .line 1144
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    aget v9, v8, v11

    iget-object v10, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v6

    sub-int/2addr v10, v5

    add-int/2addr v9, v10

    aput v9, v8, v11

    .line 1147
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSavePotraitLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1100(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    aget v9, v8, v11

    add-int/2addr v9, v5

    aput v9, v8, v11

    .line 1159
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v8}, Lcom/android/contacts/editor/ContactEditorFragment;->startAddaContactTutorial()V

    goto/16 :goto_0

    .line 1148
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v10, :cond_4

    .line 1150
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    new-array v9, v10, [I

    # setter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8, v9}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1002(Lcom/android/contacts/activities/ContactEditorActivity;[I)[I

    .line 1151
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v9, v9, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v9}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1152
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    aget v9, v8, v12

    iget-object v10, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v6

    add-int/2addr v9, v10

    aput v9, v8, v12

    .line 1154
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    aget v9, v8, v11

    iget-object v10, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->val$menuButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v6

    sub-int/2addr v10, v5

    add-int/2addr v9, v10

    aput v9, v8, v11

    .line 1157
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$4;

    iget-object v8, v8, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveLandLocation:[I
    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->access$1000(Lcom/android/contacts/activities/ContactEditorActivity;)[I

    move-result-object v8

    aget v9, v8, v11

    add-int/2addr v9, v5

    aput v9, v8, v11

    goto :goto_1
.end method
