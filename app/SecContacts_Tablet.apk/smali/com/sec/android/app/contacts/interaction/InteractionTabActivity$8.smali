.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->scrollToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

.field final synthetic val$scrollTabHandler:Landroid/os/Handler;

.field final synthetic val$tabIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 3021
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->val$scrollTabHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->val$tabIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 3024
    const/4 v6, -0x1

    .line 3027
    .local v6, "scrollingTabContainerViewIndex":I
    const/4 v7, 0x0

    .line 3029
    .local v7, "v":Landroid/view/View;
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    const v10, 0x10203b9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 3035
    const/4 v8, 0x0

    .line 3036
    .local v8, "view":Landroid/view/ViewGroup;
    instance-of v9, v7, Landroid/view/ViewGroup;

    if-eqz v9, :cond_0

    move-object v8, v7

    .line 3037
    check-cast v8, Landroid/view/ViewGroup;

    .line 3040
    :cond_0
    instance-of v9, v8, Lcom/android/internal/widget/ActionBarView;

    if-eqz v9, :cond_4

    move-object v1, v8

    .line 3041
    check-cast v1, Lcom/android/internal/widget/ActionBarView;

    .line 3042
    .local v1, "actionView":Lcom/android/internal/widget/ActionBarView;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3044
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 3045
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v9, :cond_3

    .line 3046
    move v6, v4

    .line 3051
    :cond_1
    if-ltz v6, :cond_2

    .line 3052
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 3055
    .local v5, "scrollTabView":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->val$scrollTabHandler:Landroid/os/Handler;

    new-instance v10, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;

    invoke-direct {v10, p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;Lcom/android/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3132
    .end local v1    # "actionView":Lcom/android/internal/widget/ActionBarView;
    .end local v2    # "childCount":I
    .end local v4    # "i":I
    .end local v5    # "scrollTabView":Lcom/android/internal/widget/ScrollingTabContainerView;
    .end local v8    # "view":Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    return-void

    .line 3031
    :catch_0
    move-exception v3

    .line 3032
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3044
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "actionView":Lcom/android/internal/widget/ActionBarView;
    .restart local v2    # "childCount":I
    .restart local v4    # "i":I
    .restart local v8    # "view":Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3067
    .end local v1    # "actionView":Lcom/android/internal/widget/ActionBarView;
    .end local v2    # "childCount":I
    .end local v4    # "i":I
    :cond_4
    instance-of v9, v8, Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v9, :cond_2

    .line 3068
    const/4 v0, 0x0

    .line 3070
    .local v0, "actionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 3071
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v9, :cond_8

    .line 3072
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "actionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    .line 3077
    .restart local v0    # "actionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    :cond_5
    if-eqz v0, :cond_2

    .line 3078
    const/4 v1, 0x0

    .line 3079
    .restart local v1    # "actionView":Lcom/android/internal/widget/ActionBarView;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3080
    .restart local v2    # "childCount":I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_6

    .line 3081
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v9, :cond_9

    .line 3082
    move v6, v4

    .line 3090
    :cond_6
    :goto_4
    if-eqz v1, :cond_c

    .line 3091
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 3092
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v9, :cond_b

    .line 3093
    move v6, v4

    .line 3097
    :cond_7
    if-ltz v6, :cond_2

    .line 3098
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 3102
    .restart local v5    # "scrollTabView":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->val$scrollTabHandler:Landroid/os/Handler;

    new-instance v10, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$2;

    invoke-direct {v10, p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;Lcom/android/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3070
    .end local v1    # "actionView":Lcom/android/internal/widget/ActionBarView;
    .end local v2    # "childCount":I
    .end local v5    # "scrollTabView":Lcom/android/internal/widget/ScrollingTabContainerView;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3084
    .restart local v1    # "actionView":Lcom/android/internal/widget/ActionBarView;
    .restart local v2    # "childCount":I
    :cond_9
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/widget/ActionBarView;

    if-eqz v9, :cond_a

    .line 3085
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "actionView":Lcom/android/internal/widget/ActionBarView;
    check-cast v1, Lcom/android/internal/widget/ActionBarView;

    .line 3086
    .restart local v1    # "actionView":Lcom/android/internal/widget/ActionBarView;
    goto :goto_4

    .line 3080
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3091
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3114
    :cond_c
    if-ltz v6, :cond_2

    .line 3115
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 3118
    .restart local v5    # "scrollTabView":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->val$scrollTabHandler:Landroid/os/Handler;

    new-instance v10, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$3;

    invoke-direct {v10, p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;Lcom/android/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method
