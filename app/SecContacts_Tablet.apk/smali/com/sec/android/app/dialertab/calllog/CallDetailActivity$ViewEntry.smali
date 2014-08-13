.class final Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public chatonCallDescription:Ljava/lang/String;

.field public chatonCallIcon:I

.field public chatonCallIntent:Landroid/content/Intent;

.field public chatonMsgDescription:Ljava/lang/String;

.field public chatonMsgIcon:I

.field public chatonMsgIntent:Landroid/content/Intent;

.field public chatonVTDescription:Ljava/lang/String;

.field public chatonVTIcon:I

.field public chatonVTIntent:Landroid/content/Intent;

.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public quanternaryDescription:Ljava/lang/String;

.field public quanternaryIcon:I

.field public quanternaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public sim2CallDescription:Ljava/lang/String;

.field public sim2CallIcon:I

.field public sim2CallIntent:Landroid/content/Intent;

.field public tertiaryDescription:Ljava/lang/String;

.field public tertiaryIcon:I

.field public tertiaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2759
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 2761
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 2763
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2765
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 2767
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIcon:I

    .line 2768
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 2769
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 2771
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryIcon:I

    .line 2772
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    .line 2773
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryDescription:Ljava/lang/String;

    .line 2775
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIcon:I

    .line 2776
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    .line 2777
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallDescription:Ljava/lang/String;

    .line 2779
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonMsgIcon:I

    .line 2780
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonMsgIntent:Landroid/content/Intent;

    .line 2781
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonMsgDescription:Ljava/lang/String;

    .line 2783
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonCallIcon:I

    .line 2784
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonCallIntent:Landroid/content/Intent;

    .line 2785
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonCallDescription:Ljava/lang/String;

    .line 2787
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonVTIcon:I

    .line 2788
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonVTIntent:Landroid/content/Intent;

    .line 2789
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonVTDescription:Ljava/lang/String;

    .line 2792
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 2793
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 2794
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 2818
    return-void
.end method


# virtual methods
.method public setChatOnCallAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 2852
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonCallIntent:Landroid/content/Intent;

    .line 2853
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonCallDescription:Ljava/lang/String;

    .line 2854
    return-void
.end method

.method public setChatOnMsgAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonMsgIntent:Landroid/content/Intent;

    .line 2848
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonMsgDescription:Ljava/lang/String;

    .line 2849
    return-void
.end method

.method public setChatOnVTAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 2857
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonVTIntent:Landroid/content/Intent;

    .line 2858
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonVTDescription:Ljava/lang/String;

    .line 2859
    return-void
.end method

.method public setQuanternaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 2831
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    .line 2832
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryDescription:Ljava/lang/String;

    .line 2833
    return-void
.end method

.method public setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 2821
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2822
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 2823
    return-void
.end method

.method public setSim2CallAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 2836
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    .line 2837
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallDescription:Ljava/lang/String;

    .line 2844
    return-void
.end method

.method public setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 2826
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 2827
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 2828
    return-void
.end method
