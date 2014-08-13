.class Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;
.super Ljava/lang/Object;
.source "AbbreviatedDialingCodesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallInterceptItem"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mNumber:Ljava/lang/String;

.field private separator1:Ljava/lang/String;

.field private separator2:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "mNumber"    # Ljava/lang/String;
    .param p3, "separator1"    # Ljava/lang/String;
    .param p4, "separator2"    # Ljava/lang/String;
    .param p5, "mIntent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->this$0:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->mNumber:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->separator1:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->separator2:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->mIntent:Landroid/content/Intent;

    .line 57
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method
