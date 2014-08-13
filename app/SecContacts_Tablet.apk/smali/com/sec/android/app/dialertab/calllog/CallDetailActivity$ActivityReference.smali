.class final Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityReference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 4696
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;

    .prologue
    .line 4696
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    return-void
.end method


# virtual methods
.method public final get()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 4699
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    return-object v0
.end method
