import { FeatureSchemaDefinition } from "@mystiq/schema-types";
const news: FeatureSchemaDefinition = {
  namespace: "news",
  variants: {
    card: [
      {
        title: "News summary card",
        value: "summary",
      },
    ],
  },
};

export default news