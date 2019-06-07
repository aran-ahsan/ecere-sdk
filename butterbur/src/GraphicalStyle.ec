/******************************************************************************
 Styling of GraphicalElements from eC Cascading Style Sheets
******************************************************************************/
public import IMPORT_STATIC "ecere"
import "eccss"
import "GraphicalElement"

public class GraphicalStyleMask : StylesMask
{
public:
   bool fillPattern        :1: 0;
   bool fillColor          :1: 1;
   bool fillStippleStyle   :1: 2;
   bool fillHatchStyle     :1: 3;
   bool fillGradient       :1: 4;
   bool strokePattern      :1: 5;
   bool strokeOpacity      :1: 6;
   bool strokeWidth        :1: 7;
   bool strokeColor        :1: 8;
   bool strokeCenterWidth  :1: 9;
   bool strokeCenterColor  :1:10;
   bool strokeCasingWidth  :1:11;
   bool strokeCasingColor  :1:12;
   bool strokeJoin         :1:13;
   bool strokeCap          :1:14;
   bool strokeDashPattern  :1:15;
   bool text               :1:16;
   bool font               :1:17;
   bool face               :1:18;
   bool size               :1:19;
   bool width              :1:20;
   bool bold               :1:21;
   bool italic             :1:22;
   bool outline            :1:23;
   bool casing             :1:24;
   bool color              :1:25;
   bool image              :1:26;
   bool alignmentHorzAlign :1:27;
   bool alignmentVertAlign :1:28;
   bool zOrder             :1:29;
   bool visibility         :1:30;
   bool transform          :1:31;
   bool opacity            :1:32;
   bool transform3D        :1:33;
};

public enum GraphicalStyleKind : GraphicalStyleMask
{
   fill = GraphicalStyleMask { fillPattern = true, fillColor = true, fillStippleStyle = true, fillHatchStyle = true, fillGradient = true },
   fillPattern = GraphicalStyleMask { fillPattern = true },
   fillColor = GraphicalStyleMask { fillColor = true },
   fillStippleStyle = GraphicalStyleMask { fillStippleStyle = true },
   fillHatchStyle = GraphicalStyleMask { fillHatchStyle = true },
   fillGradient = GraphicalStyleMask { fillGradient = true },
   stroke = GraphicalStyleMask { strokePattern = true, strokeOpacity = true, strokeWidth = true, strokeColor = true, strokeCenterWidth = true, strokeCenterColor = true, strokeCasingWidth = true, strokeCasingColor = true  },
   strokePattern = GraphicalStyleMask { strokePattern = true },
   strokeOpacity = GraphicalStyleMask { strokeOpacity = true },
   strokeWidth = GraphicalStyleMask { strokeWidth = true },
   strokeColor = GraphicalStyleMask { strokeColor = true },
   strokeCenter = GraphicalStyleMask { strokeCenterWidth = true, strokeCenterColor = true },
   strokeCenterWidth = GraphicalStyleMask { strokeCenterWidth = true },
   strokeCenterColor = GraphicalStyleMask { strokeCenterColor = true },
   strokeCasing = GraphicalStyleMask { strokeCasingWidth = true, strokeCasingColor = true },
   strokeCasingWidth = GraphicalStyleMask { strokeCasingWidth = true },
   strokeCasingColor = GraphicalStyleMask { strokeCasingColor = true },
   strokeJoin = GraphicalStyleMask { strokeJoin = true },
   strokeCap = GraphicalStyleMask { strokeCap = true },
   strokeDashPattern = GraphicalStyleMask { strokeDashPattern = true },
   text = GraphicalStyleMask { text = true },
   font = GraphicalStyleMask { font = true },
   face = GraphicalStyleMask { face = true },
   size = GraphicalStyleMask { size = true },
   width = GraphicalStyleMask { width = true },
   bold = GraphicalStyleMask { bold = true },
   italic = GraphicalStyleMask { italic = true },
   outline = GraphicalStyleMask { outline = true },
   color = GraphicalStyleMask { color = true },
   casing = GraphicalStyleMask { casing = true },
   image = GraphicalStyleMask { image = true },
   alignment = GraphicalStyleMask { alignmentHorzAlign = true, alignmentVertAlign = true },
   alignmentHorzAlign = GraphicalStyleMask { alignmentHorzAlign = true },
   alignmentVertAlign = GraphicalStyleMask { alignmentVertAlign = true },
   zOrder = GraphicalStyleMask { zOrder = true },
   visibility = GraphicalStyleMask { visibility = true },
   transform = GraphicalStyleMask { transform = true },
   opacity = GraphicalStyleMask { opacity = true },
   transform3D = GraphicalStyleMask { transform3D = true },
};

// TODO: Replace these by class reflection
Map<String, GraphicalStyleMask> styleIdentifierMap
{ [
   { "fill", fill },
   { "fill.pattern", fillPattern },
   { "fill.color", fillColor },
   { "fill.stipple", fillStippleStyle },
   { "fill.hatch", fillHatchStyle },
   { "fill.gradient", fillGradient },
   { "stroke", stroke },
   { "stroke.pattern", strokePattern },
   { "stroke.opacity", strokeOpacity },
   { "stroke.color", strokeColor },
   { "stroke.width", strokeWidth },
   { "stroke.casing", strokeCasing },
   { "stroke.casing.width", strokeCasingWidth },
   { "stroke.casing.color", strokeCasingColor },
   { "stroke.join", strokeJoin },
   { "stroke.cap", strokeCap },
   { "stroke.dashPattern", strokeDashPattern },
   { "text", text },
   { "font", font },
   { "bold", bold },
   { "italic", italic },
   { "alignment", alignment },
   { "alignment.horzAlign", alignmentHorzAlign },
   { "alignment.vertAlign", alignmentVertAlign },
   { "opacity", opacity },
   { "transform", transform },
   { "transform3D", transform3D }
] };

Map<GraphicalStyleMask, const String> stringFromMaskMap
{ [
   { fill, "fill" },
   { fillPattern, "fill.pattern" },
   { fillColor, "fill.color" },
   { fillStippleStyle, "fill.stippleStyle" },
   { fillHatchStyle, "fill.hatchStyle" },
   { fillGradient, "fill.gradient" },
   { stroke, "stroke" },
   { strokePattern, "stroke.pattern" },
   { strokeOpacity, "stroke.opacity" },
   { strokeColor, "stroke.color" },
   { strokeWidth, "stroke.width" },
   { strokeCasing, "stroke.casing" },
   { strokeCasingWidth, "stroke.casing.width" },
   { strokeCasingColor, "stroke.ca/sing.color" },
   { strokeJoin, "stroke.join" },
   { strokeCap, "stroke.cap" },
   { strokeDashPattern, "stroke.dashPattern"  },
   { alignment, "alignment" },
   { alignmentHorzAlign, "alignment.horzAlign" },
   { alignmentVertAlign, "alignment.vertAlign" },
   { opacity, "opacity" },
   { transform, "transform" },
   { transform3D, "transform3D" },
   { text, "text" },
   { font, "font" },
   { face, "face" },
   { size, "size" },
   { width, "width" },
   { bold, "bold" },
   { italic, "italic" },
   { outline, "outline" },
   { color, "color" },
   { casing, "casing" },
   { image, "image" }
] };

public class GraphicalStyle : struct
{
public:
   // Properties...
   Fill fill { };
   Stroke stroke { };
   Alignment2D alignment;
   int zOrder;
   bool visibility;
   float opacity;
   Transform transform;

   // Internal...
   ExpFlags flags;

   //return sym for visualization classes
   public GraphicalStyle ::build(CMSSStyleSheet styleSheet, ECCSSEvaluator evaluator, Class stylesClass)
   {
      GraphicalStyle symbolizer = eInstance_New(stylesClass ? stylesClass : class(GraphicalStyle));
      GraphicalStyleMask m = 0xffffffffffffffff;
      ExpFlags flg = 0;
      if(styleSheet)
         m = symbolizer.symbolizeBlocks(styleSheet.list, m, evaluator, &flg);
      if(m) symbolizer.applyDefaults(m);
      symbolizer.flags = flg;
      return symbolizer;
   }

   private void applyDefaults(GraphicalStyleMask mask)
   {
      if(mask.fillColor) fill.color = white;
      if(mask.strokeColor) stroke.color = black;
      if(mask.opacity) opacity = 1.0;
      if(mask.visibility) visibility = true;
   }

   private static GraphicalStyleMask symbolizeBlocks(StylingRuleBlockList list,
      GraphicalStyleMask m, ECCSSEvaluator evaluator, ExpFlags * flg)
   {
      Iterator<StylingRuleBlock> it { list };
      while(it.Prev())
      {
         StylingRuleBlock block = it.data;
         GraphicalStyleMask bm = (GraphicalStyleMask)block.mask & m;
         if(bm)
            m = symbolizeBlock(block, m, evaluator, flg);
      }
      return m;
   }

   // TOCHECK: Both mask and flags must be returned?
   private static GraphicalStyleMask symbolizeBlock(StylingRuleBlock block, GraphicalStyleMask m, ECCSSEvaluator evaluator, ExpFlags * flg)
   {
      ExpFlags flags = 0;
      bool apply = true;

      if(block.selectors)
      {
         // TODO: Per-record flags for selectors?
         for(s : block.selectors)
         {
            FieldValue value { };
            CMSSExpression e = s.exp;
            ExpFlags sFlags = e.compute(value, evaluator, runtime);
            flags |= sFlags;

            if(!sFlags.resolved || !value.i)
               apply = false;
            //callAgain = flags.callAgain;
         }
         *flg |= flags;
      }

      if(apply)
      {
         if(block.nestedRules) m = symbolizeBlocks(block.nestedRules, m, evaluator, flg);
         if(m)
         {
            Iterator<CMSSMemberInitList> itStyle { block.styles };
            while(itStyle.Prev())
            {
               Iterator<CMSSMemberInit> itMember { itStyle.data };
               while(itMember.Prev())
               {
                  CMSSMemberInit member = itMember.data;
                  CMSSInitExp initExp = member.initializer && member.initializer._class == class(CMSSInitExp) ? (CMSSInitExp)member.initializer : null;
                  CMSSExpression e = initExp.exp;
                  GraphicalStyleMask sm = (GraphicalStyleMask)member.stylesMask;
                  if(sm & m)
                  {
                     setGraphicalStyleMember(block, sm, m, e, evaluator, flg);
                     m &= ~sm;
                  }
               }
            }
         }
      }
      return m;
   }

   private void setGraphicalStyleMember(StylingRuleBlock block, GraphicalStyleKind mSet, GraphicalStyleMask mask, CMSSExpression e,
      ECCSSEvaluator evaluator, ExpFlags * flg)
   {
      CMSSExpInstance inst = e._class == class(CMSSExpInstance) ? (CMSSExpInstance)e : null;
      CMSSExpArray arr = e._class == class(CMSSExpArray) ? (CMSSExpArray)e : null;
      if(inst)
         setMemberInstance(block, mSet, inst, evaluator, flg);
      else if(arr)
         setMemberArray(block, mSet, arr, evaluator, flg);
      else
      {
         CMSSExpConstant c = e._class == class(CMSSExpConstant) ? (CMSSExpConstant)e : null;
         // CMSSExpString s = e._class == class(CMSSExpString) ? (CMSSExpString)e : null;
         FieldValue value { };
         ExpFlags mFlg = e.compute(value, evaluator, runtime);

         switch(mSet)
         {
            //pattern needs special code
            //case fillPattern: if(!fill.pattern) fill.pattern = { }; break;
            case fillColor: fill.color = (Color)c.constant.i; break;
            case fillStippleStyle: fill.stipple = (StippleType)c.constant.i; break;
            case fillHatchStyle: fill.hatch = (HatchType)c.constant.i; break;
            case fillGradient: fill.gradient = c.constant.b; break;
            case strokePattern: stroke.pattern = { }; break;
            case strokeOpacity:  stroke.opacity = (float)c.constant.r; break;
            case strokeColor: stroke.color = (Color)value.i; break;
            case strokeWidth:  stroke.width = (float)c.constant.r; break;
            case strokeCasingWidth:  stroke.casing.width = (float)c.constant.r; break;
            case strokeCasingColor:  stroke.casing.color = (Color)c.constant.i; break;
            case strokeJoin: stroke.join = (LineJoin)c.constant.i; break;
            case strokeCap: stroke.cap = (LineCap)c.constant.i; break;
            case strokeDashPattern: stroke.dashes = c.constant.b; break;
            //case alignmentHorzAlign: alignment.horzAlign = (HAlignment)c.constant.i; break;
            //case alignmentVertAlign: alignment.vertAlign = (VAlignment)c.constant.i; break;
            // error for these:duplicate case value ; error: previously used here
            /*
            { "transform", transform },
            { "transform3D", transform3D },
            */
            case opacity: opacity = (float)c.constant.r; break;
            default:
               if(evaluator != null)
                  evaluator.evaluatorClass.setMember(this, mSet, c);
         }
         *flg |= mFlg;
      }
   }


   private void setMemberInstance(StylingRuleBlock block, GraphicalStyleKind mask, CMSSExpInstance inst,
      ECCSSEvaluator evaluator, ExpFlags * flg)
   {
      if(inst)
      {
         for(i : inst.instance.members)
         {
            CMSSInstInitMember member = (CMSSInstInitMember)i;
            for(m : member.members)
            {
               CMSSMemberInit minit = m;
               if(minit.initializer._class == class(CMSSInitExp))
               {
                  CMSSInitExp initExp = (CMSSInitExp)minit.initializer;
                  GraphicalStyleMask sm = (GraphicalStyleMask)minit.stylesMask;
                  if(sm & mask)
                  {
                     setGraphicalStyleMember(block, sm, mask, initExp.exp, evaluator, flg);
                     mask &= ~sm;
                  }
               }
            }
         }
      }
   }

   private void setMemberArray(StylingRuleBlock block, GraphicalStyleKind mask, CMSSExpArray arr,
      ECCSSEvaluator evaluator, ExpFlags * flg)
   {
      if(arr && evaluator != null)
      {
         // TODO: Do this in a more generic manner
         Array<Instance> array = evaluator.evaluatorClass.accessSubArray(this, mask);
         if(array)
            for(e : arr.elements; e._class == class(CMSSExpInstance))
               array.Add(createGenericInstance((CMSSExpInstance)e, evaluator, flg));
      }
   }
}
