.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;

.field final synthetic val$scrollTabView:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 3055
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;->val$scrollTabView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;->val$scrollTabView:Lcom/android/internal/widget/ScrollingTabContainerView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3064
    return-void
.end method
